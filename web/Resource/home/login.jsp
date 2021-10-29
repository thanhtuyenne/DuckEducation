<%-- 
    Document   : login-signup-register
    Created on : Oct 18, 2021, 5:33:11 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr" >

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/login-signup-register.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/animation.css">        
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/toolbar.css">
        <script type="text/javascript" src="${pageContext.request.contextPath}/JS/login.js"></script>
        <title>Duck Edu (login)</title>
        <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %> 
    </head>

    <body>
        <div class="container">
            <div class="wrapper">
                <div class="title"><span>Login Form</span></div>
                <form action="login" method="POST">
                    <div class="row">
                        <i class="fas fa-user"></i>
                        <input type="text" placeholder="UserName" required name="username">
                    </div>
                    <div class="row">
                        <i class="fas fa-lock"></i>
                        <input type="password" placeholder="Password" required name="password">
                    </div>
                    <div class="pass"><a href="${pageContext.request.contextPath}/control?button-control=forgot-password">Forgot password?</a></div>
                    <div class="row button">
                        <input id="myBtn" type="submit" value="Login" name="control">
                    </div>
                    <div class="signup-link">Not a member? <a href="${pageContext.request.contextPath}/control?button-control=signup">SignUp Now</a></div>
                </form>
            </div>
        </div>

        <div id="myModal" class="modal ${requestScope.message == null?"":"show"}">
            <!-- Modal content -->
            <div class="modal-content ">
                <span class="close" onclick="hide()">&times;</span>
                <p>${requestScope.message}</p>
            </div>
        </div>
    </body>

</html>
