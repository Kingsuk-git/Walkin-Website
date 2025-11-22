
<%@page import = "com.DB.DBConnect" %>
<%@page import = "java.sql.Connection" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Walkin - Find Your Dream Job</title>
    
     <link rel="stylesheet" href="all_components/style.css">
        
    
</head>
<body>
    <jsp:include page="all_components/navbar.jsp" />
    
	<%Connection conn = DBConnect.getConn();
	out.println(conn);%>
    <!-- Main Content -->
    <main class="main-content">
        <!-- Hero Section -->
        <section class="hero-section">
            <h1 class="hero-title">Find Your Dream Job</h1>
            <p class="hero-subtitle">
                Discover thousands of job opportunities from top companies. 
                Take the next step in your career journey with Walkin.
            </p>
            
            <div class="search-container">
                <input type="text" class="search-input" placeholder="Job title, keywords, or company">
                <input type="text" class="search-input" placeholder="City or remote">
                <button class="search-btn">Search Jobs</button>
            </div>
        </section>

        <!-- Stats Section -->
        <section class="stats">
            <div class="stat-item">
                <div class="stat-number">10K+</div>
                <div class="stat-label">Active Jobs</div>
            </div>
            <div class="stat-item">
                <div class="stat-number">5K+</div>
                <div class="stat-label">Companies</div>
            </div>
            <div class="stat-item">
                <div class="stat-number">50K+</div>
                <div class="stat-label">Job Seekers</div>
            </div>
            <div class="stat-item">
                <div class="stat-number">15K+</div>
                <div class="stat-label">Success Stories</div>
            </div>
        </section>

        <!-- Features Section -->
        <section class="features">
            <div class="feature-card">
                <div class="feature-icon">🔍</div>
                <h3 class="feature-title">Smart Job Search</h3>
                <p class="feature-description">
                    Find relevant jobs with our AI-powered search that matches your skills and preferences.
                </p>
            </div>
            
           
            
           
            <div class="feature-card">
                <div class="feature-icon">💼</div>
                <h3 class="feature-title">Company Insights</h3>
                <p class="feature-description">
                    Research companies, read reviews, and get salary information to make informed decisions.
                </p>
            </div>
            
            
            
            <div class="feature-card">
                <div class="feature-icon">🤝</div>
                <h3 class="feature-title">Network Connect</h3>
                <p class="feature-description">
                    Connect with professionals in your industry and expand your professional network.
                </p>
            </div>
        </section>
    </main>

 
</body>
</html>