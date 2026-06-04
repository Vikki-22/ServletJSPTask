 🎓 Student Management System

A web-based Student Management System developed using Java technologies to manage student records efficiently. This project allows users to add, view, update, and delete student information through a user-friendly interface.

---

 📌 Project Overview

The Student Management System is designed to simplify the management of student records in educational institutions. It provides a centralized platform for storing and maintaining student information with full CRUD (Create, Read, Update, Delete) functionality.

---

 🚀 Features

✅ Add New Student Records
✅ View All Students
✅ Update Student Information
✅ Delete Student Records
✅ Responsive User Interface
✅ Database Integration with MySQL
✅ MVC Architecture
✅ DAO Design Pattern Implementation

---

 🛠️ Technologies Used

 Frontend
- HTML5
- CSS3
- Bootstrap 5
- JSP

 Backend
- Java
- Servlet
- JDBC
- DAO Pattern

 Database
- MySQL

 Server
- Apache Tomcat

 Development Tools
- Eclipse IDE
- MySQL Workbench

---

⚙️ Functionalities
 1. Add Student
Users can add new student details including:
- Student Name
- Age
- Course
 2. View Students
Displays all student records stored in the database.
 3. Update Student
Modify existing student information.
 4. Delete Student
Remove unwanted student records from the system.
---
🗄️ Database Configuration
 Create Database
```sql
CREATE DATABASE student_management;
CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    age INT ,
    course VARCHAR(50),
);

CREATE TABLE user (
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE ,
    password VARCHAR(100) NOT NULL,
);
