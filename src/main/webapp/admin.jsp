<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - Walkin</title>
    
    <link rel="stylesheet" href="all_components/style_admin.css">
    <link rel="stylesheet" href="all_components/style.css">
</head>
<body>

<c:if test="${userobj.role ne 'admin' }">
	<c:redirect url = "login.jsp"></c:redirect>
</c:if>
    <!-- Navigation Bar -->
	<jsp:include page="all_components/navbar.jsp" />

    <!-- Sidebar -->
    <aside class="sidebar" id="sidebar">
        <ul class="sidebar-menu">
            <li><a href="#" class="active" onclick="showSection('dashboard')">
                <span class="menu-icon">📊</span>Dashboard
            </a></li>
            <li><a href="#" onclick="showSection('users')">
                <span class="menu-icon">👥</span>User Management
            </a></li>
            <li><a href="#" onclick="showSection('jobs')">
                <span class="menu-icon">💼</span>Job Listings
            </a></li>
            <li><a href="#" onclick="showSection('companies')">
                <span class="menu-icon">🏢</span>Companies
            </a></li>
            <li><a href="#" onclick="showSection('applications')">
                <span class="menu-icon">📝</span>Applications
            </a></li>
            <li><a href="#" onclick="showSection('reports')">
                <span class="menu-icon">📈</span>Reports
            </a></li>
            <li><a href="#" onclick="showSection('settings')">
                <span class="menu-icon">⚙️</span>Settings
            </a></li>
        </ul>
    </aside>

    <!-- Main Content -->
    <main class="main-content">
        <!-- Dashboard Section -->
        <div id="dashboard-section">
            <div class="dashboard-header">
                <h1 class="dashboard-title">Admin Dashboard</h1>
                <p class="dashboard-subtitle">Welcome back! Here's what's happening with your job portal today.</p>
            </div>

            <!-- Stats Grid -->
            <div class="stats-grid">
                <div class="stat-card">
                    <div class="stat-icon">👥</div>
                    <div class="stat-number">12,453</div>
                    <div class="stat-label">Total Users</div>
                    <div class="stat-change positive">+12% from last month</div>
                </div>
                
                <div class="stat-card">
                    <div class="stat-icon">💼</div>
                    <div class="stat-number">8,742</div>
                    <div class="stat-label">Active Jobs</div>
                    <div class="stat-change positive">+8% from last month</div>
                </div>
                
                <div class="stat-card">
                    <div class="stat-icon">🏢</div>
                    <div class="stat-number">2,156</div>
                    <div class="stat-label">Companies</div>
                    <div class="stat-change positive">+5% from last month</div>
                </div>
                
                <div class="stat-card">
                    <div class="stat-icon">📝</div>
                    <div class="stat-number">45,678</div>
                    <div class="stat-label">Applications</div>
                    <div class="stat-change negative">-3% from last month</div>
                </div>
            </div>

            <!-- Recent Activity -->
            <div class="content-section">
                <div class="section-header">
                    <h2 class="section-title">Recent Activity</h2>
                    <a href="#" class="btn btn-secondary">View All</a>
                </div>
                
                <div class="activity-item">
                    <div class="activity-icon">👤</div>
                    <div class="activity-content">
                        <div class="activity-title">New user registration</div>
                        <div class="activity-time">John Doe joined 5 minutes ago</div>
                    </div>
                </div>
                
                <div class="activity-item">
                    <div class="activity-icon">💼</div>
                    <div class="activity-content">
                        <div class="activity-title">New job posted</div>
                        <div class="activity-time">TechCorp posted Senior Developer role 15 minutes ago</div>
                    </div>
                </div>
                
                <div class="activity-item">
                    <div class="activity-icon">📝</div>
                    <div class="activity-content">
                        <div class="activity-title">Job application submitted</div>
                        <div class="activity-time">Sarah Smith applied for Marketing Manager 30 minutes ago</div>
                    </div>
                </div>
            </div>

            <!-- Analytics Chart -->
            <div class="content-section">
                <div class="section-header">
                    <h2 class="section-title">User Growth Analytics</h2>
                    <a href="#" class="btn btn-secondary">Export Data</a>
                </div>
                <div class="chart-container">
                    📈 Analytics Chart Placeholder<br>
                    <small>Chart.js or similar library can be integrated here</small>
                </div>
            </div>
        </div>

        <!-- Users Section -->
        <div id="users-section" style="display: none;">
            <div class="dashboard-header">
                <h1 class="dashboard-title">User Management</h1>
                <p class="dashboard-subtitle">Manage registered users and their accounts</p>
            </div>

            <div class="content-section">
                <div class="section-header">
                    <h2 class="section-title">All Users</h2>
                    <a href="#" class="btn btn-primary">Add New User</a>
                </div>
                
                <table class="data-table">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Qualification</th>
                            <th>Status</th>
                            <th>Joined</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>John Doe</td>
                            <td>john@example.com</td>
                            <td>Bachelor's Degree</td>
                            <td><span class="status-badge status-active">Active</span></td>
                            <td>2024-01-15</td>
                            <td>
                                <div class="action-buttons">
                                    <button class="btn btn-small btn-view">View</button>
                                    <button class="btn btn-small btn-edit">Edit</button>
                                    <button class="btn btn-small btn-delete">Delete</button>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>Sarah Smith</td>
                            <td>sarah@example.com</td>
                            <td>Master's Degree</td>
                            <td><span class="status-badge status-active">Active</span></td>
                            <td>2024-01-12</td>
                            <td>
                                <div class="action-buttons">
                                    <button class="btn btn-small btn-view">View</button>
                                    <button class="btn btn-small btn-edit">Edit</button>
                                    <button class="btn btn-small btn-delete">Delete</button>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>Mike Johnson</td>
                            <td>mike@example.com</td>
                            <td>Diploma</td>
                            <td><span class="status-badge status-inactive">Inactive</span></td>
                            <td>2024-01-10</td>
                            <td>
                                <div class="action-buttons">
                                    <button class="btn btn-small btn-view">View</button>
                                    <button class="btn btn-small btn-edit">Edit</button>
                                    <button class="btn btn-small btn-delete">Delete</button>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- Other sections would be similar... -->
    </main>

</body>
</html>