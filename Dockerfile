# Stage 1: Build the application
# We use a JDK image to compile the Java application.
FROM openjdk:17-jdk-slim AS builder

# Set the working directory inside the container.
WORKDIR /app

# Copy the Maven pom.xml file first.
# This allows Docker to cache the dependencies, so they are not downloaded again
# unless the pom.xml file changes. This is a key best practice for faster builds.
COPY pom.xml .

# Copy the entire source code into the container.
COPY src ./src

# Build the application using Maven. The '-DskipTests' flag skips running tests,
# which can speed up the build process in a Docker environment.
# The 'package' goal compiles the source code and packages it into a JAR file.
RUN ./mvnw clean package -DskipTests

# Stage 2: Create the final, lightweight image
# We switch to a JRE-only image, which is much smaller than the JDK image.
# This results in a smaller and more secure final image.
FROM openjdk:17-jre-slim

# Set the working directory for the final image.
WORKDIR /app

# Copy the JAR file from the 'builder' stage into the final image.
# The `ls` command in the builder stage helps us find the exact name of the JAR file.
# We assume the JAR file is named `sanaptic-backend-*.jar`.
COPY --from=builder /app/target/sanaptic-backend-*.jar sanaptic-backend.jar

# Expose the port that the Spring Boot application will run on.
EXPOSE 8080

# Define the entry point to run the JAR file when the container starts.
# This command starts your Spring Boot application.
ENTRYPOINT ["java", "-jar", "sanaptic-backend.jar"]
