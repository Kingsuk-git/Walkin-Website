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
    <title>View Jobs - Walkin</title>
   
   	<link rel="stylesheet" href="all_components/style_viewJobs.css">
   	<link rel="stylesheet" href="all_components/style.css">
   
</head>
<body>
<c:if test="${userobj.role ne 'admin' }">
	<c:redirect url = "login.jsp"></c:redirect>
</c:if>
 <jsp:include page="all_components/navbar.jsp" />
    <!-- Navigation Bar -->
    <!--  <nav class="navbar">	working one
        <div class="nav-container">
            <a href="#" class="logo">
                
                Walkin
                <span class="admin-badge">ADMIN</span>
            </a>
            
            <div class="nav-actions">
                <a href="add_job.jsp" class="post-job-btn">+ Post New Job</a>
                <a href="#" class="back-btn">← Back to Dashboard</a>
            </div>
        </div>
    </nav>	-->

    <!-- Main Content -->
    <main class="main-content">
        <div class="page-header">
            <h1 class="page-title">Job Listings</h1>
            <p class="page-subtitle">Manage and monitor all job postings on your platform</p>
            
            <div class="jobs-stats">
                <div class="stat-item">
                    <div class="stat-number">4</div>
                    <div class="stat-label">Total Jobs</div>
                </div>
                <div class="stat-item">
                    <div class="stat-number">3</div>
                    <div class="stat-label">Active Jobs</div>
                </div>
                <div class="stat-item">
                    <div class="stat-number">1</div>
                    <div class="stat-label">Inactive Jobs</div>
                </div>
            </div>
        </div>

        <!-- Filter Section -->
        <div class="filter-section">
            <div class="filter-row">
                <div class="filter-group">
                    <label class="filter-label">Location</label>
                    <select class="filter-select">
                        <option value="">All Locations</option>
                        <option value="maharashtra">Maharashtra</option>
                        <option value="delhi">Delhi</option>
                        <option value="karnataka">Karnataka</option>
                        <option value="remote">Remote</option>
                    </select>
                </div>
                
                <div class="filter-group">
                    <label class="filter-label">Category</label>
                    <select class="filter-select">
                        <option value="">All Categories</option>
                        <option value="information-technology">Information Technology</option>
                        <option value="banking-finance">Banking & Finance</option>
                        <option value="healthcare">Healthcare</option>
                        <option value="marketing-sales">Marketing & Sales</option>
                    </select>
                </div>
                
                <div class="filter-group">
                    <label class="filter-label">Status</label>
                    <select class="filter-select">
                        <option value="">All Status</option>
                        <option value="active">Active</option>
                        <option value="inactive">Inactive</option>
                    </select>
                </div>
                
                <div class="filter-group">
                    <button class="filter-btn">Apply Filters</button>
                </div>
            </div>
        </div>

        <!-- Jobs Grid -->
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
                    <div class="job-actions">
                        <a href="edit_job.jsp?id=<%=j.getId() %>" class="action-btn edit-btn">Edit</a>
                        <a href="delete?id=<%=j.getId() %>" class="action-btn delete-btn">Delete</a>
                    </div>
                </div>
            </div>
			<%}
			%>
			
            
        </div>

        <!-- Empty State (Hidden when jobs exist) -->
        <!-- 
        <div class="empty-state" style="display: none;">
            <div class="empty-icon">💼</div>
            <div class="empty-title">No Jobs Found</div>
            <div class="empty-subtitle">Start by posting your first job to attract candidates</div>
            <a href="#" class="post-job-btn">Post Your First Job</a>
        </div>
        -->
    </main>
</body>
</html>