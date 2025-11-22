<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*, java.sql.*, com.dao.JobDAO , com.entity.Jobs , com.DB.DBConnect" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Searched Jobs</title>
<link rel="stylesheet" href="all_components/style.css">
<link rel="stylesheet" href="all_components/style_viewJobs.css">
</head>
<body>
<c:if test="${empty userobj}">
	<c:redirect url = "login.jsp"></c:redirect>
</c:if>
 <jsp:include page="all_components/navbar.jsp" />
<div class="jobs-grid">
            

           

            
	
	
			<%
			String loc = request.getParameter("location");
			String cat = request.getParameter("category");
			String msg = "";
			
			JobDAO dao = new JobDAO(DBConnect.getConn());
			
			List<Jobs> list = null;
			
			if("lo".equals(loc) && "ca".equals(cat)){
				list = new ArrayList<Jobs>();
				msg = "Job Not Available";
			}
			else if("lo".equals(loc) && "ca".equals(cat)){
				list = dao.getJobsORLocationAndCate(cat,loc);
			}
			else{
				list = dao.getJobsAndLocationAndCate(cat,loc);
			}
			if(list.isEmpty()){
				%>
				<h4 class ="text-center" >Job Not Available</h4>
				<% 
			}
			if(list !=null){
			
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
			<%}}else{
				%>
				<h4 class = "text-center"><%=msg %></h4>
				<%
			}
			%>
			
            
        </div>
</body>
</html>