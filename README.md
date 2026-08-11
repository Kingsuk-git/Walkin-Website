# Online Walk-In Portal

The Online Walk-In Portal makes walk-in job searching easier by letting users sign up, log in, browse openings, and filter jobs by location and role. Admins can easily post and manage walk-in drives. Built with JSP, Servlets, and MySQL, it offers a smooth, secure, and user-friendly experience.

## Features

**For Job Seekers**
- Sign up and log in securely
- Browse available walk-in job openings
- Filter jobs by location and role
- View detailed drive information (company, timing, venue, requirements)

**For Admins**
- Post new walk-in drives
- Edit or remove existing job postings
- Manage all listings from a central dashboard

## Tech Stack

- **Java** (JSP & Servlets)
- **MySQL** (database)
- **JDBC** (database connectivity)
- **HTML/CSS/JavaScript** (frontend)
- **Apache Tomcat** (servlet container)

## Prerequisites

- JDK 8 or higher
- Apache Tomcat 9+
- MySQL Server


## Getting Started

### 1. Clone the repository

```bash
git clone 
cd online-walkin-portal
```

### 2. Set up the database

```sql
CREATE DATABASE walkin_portal;
USE walkin_portal;

```

### 3. Configure the database connection

Update the connection details in your DB config file (e.g. `DBConnection.java` or `db.properties`):

```properties
db.url=jdbc:mysql://localhost:3306/walkin_portal
db.username=your_username
db.password=your_password
db.driver=com.mysql.cj.jdbc.Driver
```

### 4. Add the MySQL JDBC driver

Make sure `mysql-connector-j` (JDBC driver) is in your project's `WEB-INF/lib` folder or added as a Maven dependency.

### 5. Deploy to Tomcat

- Import the project into your IDE as a Dynamic Web Project (or Maven web project)
- Build the WAR file
- Deploy it to Tomcat's `webapps` folder, or run directly from your IDE

### 6. Access the app

```
http://localhost:8080/online-walkin-portal
```
