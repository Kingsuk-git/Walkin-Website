<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*, java.sql.*, com.dao.JobDAO , com.entity.Jobs , com.DB.DBConnect" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home - Walkin</title>
    
    <link rel="stylesheet" href="all_components/style_userHome.css">
    <link rel="stylesheet" href="all_components/style.css">
</head>
<body>
    <!-- Navigation Bar -->
    <jsp:include page="all_components/navbar.jsp" />

    <!-- Main Content -->
    <main class="main-content">
        <!-- Hero Section -->
        <section class="hero-section">
            <h1 class="hero-title">Find Your Dream Job Today</h1>
            <p class="hero-subtitle">Discover thousands of opportunities from top companies across India</p>
        </section>

        <!-- Search Section -->
        <section class="search-section">
            <h2 class="search-title">Search Jobs</h2>
            <form class="search-form" action="moreView.jsp" method="GET">
                
                
                <select class="search-input" name="location">
                    <option value="">Select Location</option>
                    <option value="andhra-pradesh">Andhra Pradesh</option>
                    <option value="arunachal-pradesh">Arunachal Pradesh</option>
                    <option value="assam">Assam</option>
                    <option value="bihar">Bihar</option>
                    <option value="chhattisgarh">Chhattisgarh</option>
                    <option value="goa">Goa</option>
                    <option value="gujarat">Gujarat</option>
                    <option value="haryana">Haryana</option>
                    <option value="himachal-pradesh">Himachal Pradesh</option>
                    <option value="jharkhand">Jharkhand</option>
                    <option value="karnataka">Karnataka</option>
                    <option value="kerala">Kerala</option>
                    <option value="madhya-pradesh">Madhya Pradesh</option>
                    <option value="maharashtra">Maharashtra</option>
                    <option value="manipur">Manipur</option>
                    <option value="meghalaya">Meghalaya</option>
                    <option value="mizoram">Mizoram</option>
                    <option value="nagaland">Nagaland</option>
                    <option value="odisha">Odisha</option>
                    <option value="punjab">Punjab</option>
                    <option value="rajasthan">Rajasthan</option>
                    <option value="sikkim">Sikkim</option>
                    <option value="tamil-nadu">Tamil Nadu</option>
                    <option value="telangana">Telangana</option>
                    <option value="tripura">Tripura</option>
                    <option value="uttar-pradesh">Uttar Pradesh</option>
                    <option value="uttarakhand">Uttarakhand</option>
                    <option value="west-bengal">West Bengal</option>
                    <option value="delhi">Delhi</option>
                    <option value="chandigarh">Chandigarh</option>
                    <option value="puducherry">Puducherry</option>
                    <option value="remote">Remote</option>
                </select>
                
                <select class="search-input" name="category">
                    <option value="">Select Category</option>
                    <option value="information-technology">Information Technology</option>
                    <option value="banking-finance">Banking & Finance</option>
                    <option value="healthcare">Healthcare</option>
                    <option value="education">Education</option>
                    <option value="marketing-sales">Marketing & Sales</option>
                    <option value="human-resources">Human Resources</option>
                    <option value="engineering">Engineering</option>
                    <option value="manufacturing">Manufacturing</option>
                    <option value="retail">Retail</option>
                    <option value="hospitality">Hospitality</option>
                    <option value="construction">Construction</option>
                    <option value="telecommunications">Telecommunications</option>
                    <option value="consulting">Consulting</option>
                    <option value="media-entertainment">Media & Entertainment</option>
                    <option value="logistics">Logistics</option>
                    <option value="pharmaceuticals">Pharmaceuticals</option>
                    <option value="automotive">Automotive</option>
                    <option value="real-estate">Real Estate</option>
                    <option value="agriculture">Agriculture</option>
                    <option value="government">Government</option>
                    <option value="non-profit">Non-Profit</option>
                    <option value="startups">Startups</option>
                    <option value="other">Other</option>
                </select>
                
                <button type="submit" class="search-btn">Search</button>
            </form>
        </section>

        <!-- Stats Section -->
        <section class="stats-section">
            <div class="stats-grid">
                <div class="stat-item">
                    <div class="stat-number">0</div>
                    <div class="stat-label">Applications Sent</div>
                </div>
                <div class="stat-item">
                    <div class="stat-number">8,742</div>
                    <div class="stat-label">Active Jobs</div>
                </div>
                <div class="stat-item">
                    <div class="stat-number">2,156</div>
                    <div class="stat-label">Companies Hiring</div>
                </div>
                <div class="stat-item">
                    <div class="stat-number">0</div>
                    <div class="stat-label">Profile Views</div>
                </div>
            </div>
        </section>

        <!-- Jobs Section -->
        <section class="jobs-section">
            <div class="section-header">
                <h2 class="section-title">Latest Jobs</h2>
                <a href="#" class="view-all">View All→</a>
            </div>

            <div class="jobs-grid">
                

               

              <%JobDAO dao = new JobDAO(DBConnect.getConn());
			List<Jobs> list = dao.getAllJobs();
			for(Jobs j :list)
			{%>
			<div class="job-card">
                <div class="status-badge status-active"><%=j.getStatus() %></div>
                
                <div class="job-header">
                    <h3 class="job-title"><%=j.getTitle() %></h3>
                    <div class="job-meta">
                        <div class="meta-item">
                            <span class="meta-icon">📍</span>
                            <span><%=j.getLocation() %></span>
                        </div>
                        <div class="meta-item">
                            <span class="meta-icon">🏢</span>
                            <span><%=j.getCategory() %></span>
                        </div>
                    </div>
                </div>
                
                <div class="job-description">
                    <%=j.getDescription() %>
                </div>
                <button class="read-more-btn">Read more</button>
                
                <div class="job-footer">
                    <div class="publish-date">Published: <%=j.getPdate() %></div>
                    <!--  <div class="job-actions">
                        <a href="edit_job.jsp?id=<%=j.getId() %>" class="action-btn edit-btn">Edit</a>
                        <a href="delete?id=<%=j.getId() %>" class="action-btn delete-btn">Delete</a>
                    </div>-->
                </div>
            </div>
			<%}
			%>
                

                
            </div>
        </section>
    </main>
</body>
</html>