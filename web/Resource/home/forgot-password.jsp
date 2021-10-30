<%-- 
    Document   : forgot-password
    Created on : Oct 18, 2021, 6:20:55 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Created By CodingLab - www.codinglabweb.com -->
<html lang="en" dir="ltr"  class=".swing-in-top-fwd">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- <title>Login Form | CodingLab</title> -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/login-signup-register.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
        <script type="text/javascript" src="${pageContext.request.contextPath}/JS/forgot-password.js"></script>
        <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>  <%--import JSTL --%>
    </head>

    <body onload="show(${show_modal});show3(${show_modal3})">
        <div class="container">
            <div class="wrapper">
                <div class="title"><span>Get your Password</span></div>
                <form action="forgotpw" method="POST">
                    <div class="row">
                        <i class="fas fa-user"></i>
                        <input type="text" placeholder="username" required name="username">
                    </div>

                    <div class="row button">
                        <input type="submit" id="myBtn2" value="Send" name="control">
                    </div>
                </form>
                <div class="signup-link">Login instead ? <a href="${pageContext.request.contextPath}/control?button-control=login">Login Now</a></div>
            </div>
        </div>

        <div id="myModal2" class="modal2">
            <!-- Modal content -->
            <div class="modal-content2">
                <span class="close" onclick="hide()">&times;</span>
                <p>There is no account with this email</p>
            </div>
        </div>

        <div id="myModal3" class="modal2">
            <!-- Modal content -->
            <div class="modal-content2">
                <span class="close" onclick="hide3()">&times;</span>
                <p>Email Invalid</p>
            </div>
        </div>
    </body>
</html>
