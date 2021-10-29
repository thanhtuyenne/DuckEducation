<%-- 
    Document   : user
    Created on : Oct 23, 2021, 11:51:14 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href='https://css.gg/chevron-left.css' rel='stylesheet'>
        <link href='https://css.gg/chevron-right.css' rel='stylesheet'>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/toolbar.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/<%=lib.Web.USER%>/CSS/index.css">
        <title>Document</title>
        <style>

        </style>
    </head>
    <body>
        <%@include file="../../Resource/html/header-option.jsp" %>
        <div id="d_user_all">
            <div id="user_first">
                <h2 class="user_h2">MY PROFILE</h2>
                <div class="user_from"> ${user.username}</div>
                <div class="user_from"> ${user.name}</div>
                <div class="user_from"> ${user.dob}</div>
                <div class="user_from"> ${user.email}</div>
                <div class="user_from"> ${user.address}</div>

                <div id="div_a"><a id="user_a" href="${pageContext.request.contextPath}/control?button-control=editProfile">Edit</a></div>
            </div>
            <div id="user_second">
                <div id="user_second_one">
                    <div id="div_h2">
                        <h2 class="user_h2">CERTIFICATE</h2>
                    </div>
                    <div id="chuyenhuong">
                        <div id="left"><a href=""><i class="gg-chevron-left"></i></a></div>
                        <div id="right"><a href=""><i class="gg-chevron-right"></i></a></div>
                    </div>
                </div>
                <div id="user_row_1">
                    <c:forEach items="${requestScope.cer}" var="cers">
                        <div class="div_img">
                            <img class="user_img" src="${cers.img_certificate}" alt=""> 
                            <br> ${cers.name_certificate}
                        </div>
                    </c:forEach>
                    <!--                    <div class="div_img">
                                            <img class="user_img" src="https://img.lovepik.com/element/45004/1281.png_860.png" alt=""> <br> Supject Name
                                        </div>
                                        <div class="div_img">
                                            <img class="user_img" src="https://img.lovepik.com/element/45004/1281.png_860.png" alt=""> <br> Supject Name
                                        </div>
                                        <div class="div_img">
                                            <img class="user_img" src="https://img.lovepik.com/element/45004/1281.png_860.png" alt=""> <br> Supject Name
                                        </div>
                                        <div class="div_img">
                                            <img class="user_img" src="https://img.lovepik.com/element/45004/1281.png_860.png" alt=""> <br> Supject Name
                                        </div>-->
                </div>
                        <!--                <div id="user_row_2">
                                            <div class="div_img">
                                                <img class="user_img" src="https://img.lovepik.com/element/45004/1281.png_860.png" alt=""> <br> Supject Name
                                            </div>
                                            <div class="div_img">
                                                <img class="user_img" src="https://img.lovepik.com/element/45004/1281.png_860.png" alt=""> <br> Supject Name
                                            </div>
                                            <div class="div_img">
                                                <img class="user_img" src="https://img.lovepik.com/element/45004/1281.png_860.png" alt=""> <br> Supject Name
                                            </div>
                                            <div class="div_img">
                                                <img class="user_img" src="https://img.lovepik.com/element/45004/1281.png_860.png" alt=""> <br> Supject Name
                                            </div>
                                        </div>-->
            </div>
        </div>
    </body>
</html>
