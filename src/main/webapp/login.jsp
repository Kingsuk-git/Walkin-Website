<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Walkin</title>
    
        <link rel="stylesheet" href="all_components/style_login.css">
        <link rel="stylesheet" href="all_components/style.css">
    	
</head>
<body>

<jsp:include page="all_components/navbar.jsp" />

    <div class="back-home">
        <a href="#" onclick="goBack()">Back to Home</a>
    </div>

    <div class="login-container">
        

        <div class="login-header">
            <h1 class="login-title">Welcome Back</h1>
            <p class="login-subtitle">Sign in to your account to continue</p>
        </div>

        <form action="login" method="post"> <!-- changed this line -->
        
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
            </div>

            <div class="form-group">
                <label for="password" class="form-label">Password</label>
                <div class="password-container">
                    <input 
                        type="password" 
                        id="password" 
                        name="password" 
                        class="form-input" 
                        placeholder="Enter your password"
                        required
                    >
                    
                </div>
                <div class="error-message" id="passwordError">Password must be at least 6 characters</div>
            </div>

            <div class="forgot-password">
                <a href="#" onclick="forgotPassword()">Forgot your password?</a>
            </div>

            <button type="submit" class="login-btn" id="loginBtn">
                Sign In
            </button>
        </form>

        <div class="divider">
            <span>or</span>
        </div>

        <div class="signup-link">
            <p>Don't have an account?</p>
            <a href="signup.jsp" class="signup-btn" onclick="goToSignup()">Create Account</a>
        </div>
    </div>

    
</body>
</html>