<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up - Walkin</title>
    
    <link rel="stylesheet" href="all_components/style_signup.css">
        <link rel="stylesheet" href="all_components/style.css">
    
</head>
<body>
   <jsp:include page="all_components/navbar.jsp" />

    <div class="signup-container">
        

        <div class="signup-header">
            <h1 class="signup-title">Join Walkin</h1>
            <p class="signup-subtitle">Create your account and start your career journey</p>
        </div>

        <form action = "add_user" method ="post">
            <div class="form-group">
                <label for="fullName" class="form-label">Full Name</label>
                <input 
                    type="text" 
                    id="fullName" 
                    name="fullName" 
                    class="form-input" 
                    placeholder="Enter your full name"
                    required
                >
                <div class="error-message" id="nameError">Please enter your full name</div>
            </div>

            <div class="form-group">
    <label for="qualification" class="form-label">Qualification</label>
    <input 
        type="text" 
        id="qualification" 
        name="qualification" 
        class="form-input" 
        placeholder="Enter your qualification"
        required
    >
    <div class="error-message" id="qualificationError">Please enter your qualification</div>
    <div class="success-message" id="qualificationSuccess">Qualification entered successfully</div>
</div>


            <div class="form-group">
                <label for="email" class="form-label">Email Address</label>
                <input 
                    type="email" 
                    id="email" 
                    name="email" 
                    class="form-input" 
                    placeholder="Enter your email address"
                    required
                >
                <div class="error-message" id="emailError">Please enter a valid email address</div>
                <div class="success-message" id="emailSuccess">Email is available</div>
            </div>

            <div class="form-group">
                <label for="password" class="form-label">Password</label>
                <div class="password-container">
                    <input 
                        type="password" 
                        id="password" 
                        name="password" 
                        class="form-input" 
                        placeholder="Create a strong password"
                        required
                    >
                   
                </div>
                <div class="password-strength" id="passwordStrength"></div>
                <div class="error-message" id="passwordError">Password must be at least 8 characters</div>
            </div>

            <div class="terms-checkbox">
                <input type="checkbox" id="terms" name="terms" required>
                <label for="terms">
                    I agree to the <a href="#" onclick="showTerms()">Terms of Service</a> and 
                    <a href="#" onclick="showPrivacy()">Privacy Policy</a>
                </label>
            </div>

            <button type="submit" class="signup-btn" id="signupBtn">
                Create Account
            </button>
        </form>

        <div class="divider">
            <span>or</span>
        </div>

        <div class="login-link">
            <p>Already have an account?</p>
            <a href="login.jsp" class="login-btn" onclick="goToLogin()">Sign In</a>
        </div>
    </div>

   
</body>
</html>