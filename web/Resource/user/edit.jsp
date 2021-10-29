<%-- 
    Document   : edit
    Created on : Oct 23, 2021, 12:02:18 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">        
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/toolbar.css">
        <title>Edit Profile</title>
        <script type="text/javascript" src="JS/sendRedirect.js"></script>
        <style>
            .edit_all {
                width: 100%;
                height: auto;
                border: 1px solid black;
                min-width: fit-content;
                margin-top: 101px;
            }

            .edit_all .edit_first {
                margin: auto;
                margin-bottom: 50px;
                margin-top: 50px;
                width: 500px;
                height: auto;
                border: 1px solid black;
                background-color: white;
            }

            #edit_img {
                width: 100%;
                height: 100px;
            }

            #edit_first_one {
                width: 500px;
                height: 100px;
                display: flex;
                border-style: none none solid none;
                border-width: 1px;
            }

            #edit_second {
                width: 500px;
                height: auto;
                border: 1px solid black;
            }

            #edit_one {
                width: 20%;
            }

            #edit_two {
                width: 80%;
                margin-top: 20px;
                margin-left: 20px;
            }

            .edit_second {
                text-align: center;
                color: black;
            }

            .edit_in {
                font-size: large;
                width: 200px;
                height: 50px;
                margin: 20px 5px 5px 5px;
                text-align: center;
                color: black;
            }

            .edit_in[type=email],
            .edit_in[type=date],
            .edit_in[type=address] {
                text-align: center;
                width: 420px;
                height: 50px;
            }

            .edit_in[type=submit] {
                margin-left: 45%;
                margin-bottom: 5%;
            }
        </style>
    </head>
    <body>

        <%@include file="../html/header-option.jsp" %>
        <div class="edit_all">
            <div class="edit_first">
                <div id="edit_first_one">
                    <div id="edit_one">
                        <img id="edit_img" src="https://pdp.edu.vn/wp-content/uploads/2021/06/hinh-anh-hoat-hinh-de-thuong-1.jpg" alt="">
                    </div>
                    <div id="edit_two">
                        <h1>Edit Profile</h1>
                    </div>
                </div>
                <!--this form use for update user profile, attribute action need a servlet to fix this (not control) and
                after that this sevlet using controler to move page to user page which was update-->
                <form class="edit_second" action="editProfile" method="post">
                    <input class="edit_in" type="text" name="name" placeholder="Your Name" value="${user.name}">
                    <input class="edit_in" type="email" name="email" placeholder="Email" value="${user.email}"> <br>
                    <input class="edit_in" type="date" name="dob" value="${user.dob}"><br>
                    <input class="edit_in" type="address" name="address" placeholder="Address" value="${user.address}"><br>
                    <input class="edit_in" type="submit" value="save" name="button-control">
                </form>
            </div>
        </div>
    </body>
</html>
