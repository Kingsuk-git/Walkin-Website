<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page isELIgnored="false" %>
<%@ page import="java.util.*,com.servlet.LoginServlet ,com.dao.JobDAO , com.entity.Jobs , com.DB.DBConnect,com.entity.User" %>

<!-- Navigation Bar -->
<nav class="navbar">
    <div class="nav-container">
        <a href="index.jsp" class="logo">
            
            Walkin
        </a>

        <ul class="nav-links">
            <c:if test="${userobj.role eq 'admin'}">
                <li><a href="add_job.jsp">Post Jobs</a></li>
                <li><a href="view_jobs.jsp">View Jobs</a></li>
            </c:if>
            
            <li><a href="#companies">Companies</a></li>
            <li><a href="#about">About Us</a></li>
        </ul>

        <c:if test="${userobj.role eq'admin'}">
            <div class="auth-buttons">
                <a href="admin.jsp" class="btn btn-login">Admin</a>
                <a href="logout" class="btn btn-signup">Logout</a>
            </div>
        </c:if>
        
        <c:if test="${userobj.role eq'user'}">
            <div class="auth-buttons">
                <a href="" class="btn btn-login">${userobj.name}</a>
                <a href="logout" class="btn btn-signup">Logout</a>
            </div>
        </c:if>

        <c:if test="${empty userobj}">
            <div class="auth-buttons">
                <a href="login.jsp" class="btn btn-login">Login</a>
                <a href="signup.jsp" class="btn btn-signup">Sign Up</a>
            </div>
        </c:if>
    </div>
</nav>
