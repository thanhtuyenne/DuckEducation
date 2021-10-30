<%-- 
    Document   : register
    Created on : Oct 18, 2021, 6:26:43 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/register.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>  <%--import JSTL --%>
        <title>Document</title><script type="text/javascript" src="${pageContext.request.contextPath}/JS/register.js"></script>
    </head>

    <body >
        <div class="container">
            <div class="wrapper">
                <div class="title"><span>Sign Up</span></div>
                <form  action="register" onsubmit="return checkAllData()" method="POST">
                    <div class="row">

                        <div class="box">
                            <input class="inline row" type="text" name="firstname" id="firstname" placeholder="First Name" required>
                            <span class="error" id="errFirstname">First Name must be characters. </span>
                        </div>

                        <div class="box">
                            <input class="inline row" type="text" name="lastname" id="lastname" placeholder="Last Name" required>
                            <span class="error" id="errLastname">Last Name must be characters. </span>
                        </div>

                        <div class="box">
                            <input class="inline row" type="text" name="username" id="username" placeholder="Username" required>
                            <span class="error" id="errUsername">Username must be from 6 to 30 characters and no start number.</span>
                        </div>

                        <div class="box">
                            <input class="inline row" type="text" name="gmail" id="gmail" placeholder="Gmail" required>
                            <span class="error" id="errGmail">Email don't valid</span>
                        </div>

                        <div class="box">
                            <input class="inline row" type="date" name="dob" id="dob" placeholder="Date of Birth" required>
                            <span class="error" id="errDob">Date of Birth don't valid</span>
                        </div>

                        <div class="box">
                            <input class="inline row" type="text" name="address" id="address" placeholder="Address" required>
                            <span class="error" id="errAddress">Address don't valid</span>
                        </div>

                        <div class="box">
                            <input class="inline row" type="password" placeholder="Password" id="password" required>
                            <span class="error" id="errPassword">Password must be from 6 to 30 characters.</span>
                        </div>

                        <div class="box">
                            <input class="inline row" type="password" name="confirm-password" id="confirm-password" placeholder="Confirm Password" required>
                            <span class="error" id="errConfpass">Password doesn't match.</span>
                        </div>
                    </div>
                    <div class="show-pass">
                        Show Password
                        <input type="checkbox" name="check-Showpass" id="check-Showpass">

                    </div>
                    <div class="row button">
                        <input id="myBtn" type="submit" value="Register" name="btn-register">
                    </div>
                    <div class="signup-link">
                        <a href="${pageContext.request.contextPath}/control?button-control=login">login instead</a>
                        <a href="#">Help</a>
                    </div>
                </form>
            </div>
        </div>
        <!-- Modal error -->
        <div id="myModal" class="modal ${requestScope.message == null?"":"show"}">
            <!-- Modal content -->
            <div class="modal-content ">
                <span class="close" onclick="hide()">&times;</span>
                <p>${requestScope.message}</p>
            </div>
        </div>
    </body>

</html>
