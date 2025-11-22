<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Post Job - Walkin</title>
    
    <link rel="stylesheet" href="all_components/style_addJob.css">
        <link rel="stylesheet" href="all_components/style.css">
    
</head>
<body>
    <c:if test="${userobj.role ne 'admin' }">
	<c:redirect url = "login.jsp"></c:redirect>
</c:if>
    <jsp:include page="all_components/navbar.jsp" />
    
   
    
	<!-- Will add an  alert message later  -->

    <!-- Main Content -->
    <main class="main-content">
        <div class="post-job-container">
            <div class="page-header">
                <h1 class="page-title">Post New Job</h1>
                <p class="page-subtitle">Create a new job listing to attract the best candidates</p>
            </div>

            <form action="add_job" method = "post">
                <div class="form-row">
                    <div class="form-group">
                        <label for="jobTitle" class="form-label">Job Title <span class="required">*</span></label>
                        <input 
                            type="text" 
                            id="jobTitle" 
                            name="title" 
                            class="form-input" 
                            placeholder="Enter job title"
                            required
                        >
                        <div class="error-message" id="jobTitleError">Please enter a job title</div>
                    </div>

                    <div class="form-group">
                        <label for="location" class="form-label">Location <span class="required">*</span></label>
                        <select id="location" name="location" class="form-select" required>
                            <option value="">Select location</option>
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
                        <div class="error-message" id="locationError">Please select a location</div>
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-group">
                        <label for="category" class="form-label">Category <span class="required">*</span></label>
                        <select id="category" name="category" class="form-select" required>
                            <option value="">Select category</option>
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
                        <div class="error-message" id="categoryError">Please select a category</div>
                    </div>

                    <div class="form-group">
                        <label for="status" class="form-label">Status <span class="required">*</span></label>
                        <select id="status" name="status" class="form-select" required onchange="updateStatusPreview()">
                            <option value="">Select status</option>
                            <option value="active">Active</option>
                            <option value="inactive">Inactive</option>
                        </select>
                        <span id="statusPreview" class="status-preview" style="display: none;"></span>
                        <div class="error-message" id="statusError">Please select a status</div>
                        <div class="form-help">Active jobs will be visible to job seekers immediately</div>
                    </div>
                </div>

                <div class="form-group full-width">
                    <label for="description" class="form-label">Job Description <span class="required">*</span></label>
                    <textarea 
                        id="description" 
                        name="desc" 
                        class="form-textarea" 
                        placeholder="Enter detailed job description including responsibilities, requirements, qualifications, benefits, etc."
                        required
                        oninput="updateCharacterCount()"
                    ></textarea>
                    <div class="character-count" id="charCount">0/2000 characters</div>
                    <div class="error-message" id="descriptionError">Please enter job description</div>
                    <div class="form-help">Provide a comprehensive description to attract the right candidates. Include job responsibilities, required skills, experience, and company benefits.</div>
                </div>

                <div class="form-actions">
                    <button type="button" class="btn-secondary" onclick="saveDraft()">Save as Draft</button>
                    <button type="submit" class="publish-btn" id="publishBtn">
                        Publish Job
                    </button>
                </div>
            </form>
        </div>
    </main>

    
</body>
</html>