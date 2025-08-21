# Sanaptic Backend

Sanaptic is a scalable, modular Learning Platform (LMS) designed to empower education in underserved communities, starting with township schools and expanding globally. This repository hosts the **backend API** built with **Spring Boot**, serving as the core logic and data orchestration layer for the Sanaptic platform.

---

## Overview

This backend provides:

- **User Management**: Authentication, authorization, and user role separation (Admin, Teacher, Learner, Parent).
- **Classroom & Enrollment APIs**: Manage schools, subjects, classes, and enrollments.
- **Assessment Module**: Create, assign, and evaluate quizzes/assignments.
- **Learning Resources**: Serve educational content (e.g., PDFs, videos, links).
- **Communication Tools**: Announcements and notifications for learners and staff.
- **Analytics**: Track performance and generate reports (e.g., at-risk learners).

The backend is built using:

- **Spring Boot 3+**
- **Java 17+ (or 23 if using newer features)**
- **MySQL**
- **JWT-based Security**
- **RESTful API**
- **Spring Data JPA**

---

## ⚙️ Tech Stack

| Layer             | Technology              |
|------------------|-------------------------|
| Framework        | Spring Boot             |
| Language         | Java                    |
| Database         | MySQL                   |
| Security         | Spring Security + JWT   |
| ORM              | Spring Data JPA         |
| Build Tool       | Maven                   |
| API Format       | JSON (REST)             |

---

## Getting Started

### Prerequisites

- Java 17
- Maven 3.8+
- MySQL 8+
- Postman (optional, for testing APIs)

### Setup Instructions

1. **Clone the repository**
   ```bash
   git clone https://github.com/sanaptics/sanaptics-backend.git
   cd sanaptics-backend
