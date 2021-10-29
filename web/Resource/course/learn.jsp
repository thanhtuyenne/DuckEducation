<%-- 
    Document   : learn
    Created on : Oct 23, 2021, 1:25:07 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="CSS/learn.css">
        <!--<link rel="stylesheet" href="${pageContext.request.contextPath}/<%=lib.Web.DASHBOARD%>/CSS/index.css"/>-->
        <link rel="stylesheet" href="../../CSS/toolbar.css">
        <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>-->
        <style>
            
        </style>
    </head>
    <body>
        <%@include file="../html/header-option.jsp" %>
        <div id="all_learning_site">
            <div id="first_learning_site">
                <div id="one">
                    <img id="one_img" src="https://giaovienvietnam.com/hinh-anh-tieng-anh/wp-content/uploads/2018/01/hinh-anh-tieng-anh-cho-tre-chu-de-truong-hoc-va-mon-hoc22-495x400.png" alt="">
                </div>
                <div id="two">
                    <div class="one_one">
                        <div id="name_cour">Course Name</div>
                    </div>
                    <div class="two_two">
                        <button class="button">Discussion</button>
                    </div>
                </div>
            </div>
            <div id="second_learning_site">
                <div id="sc_one">
                    <nav id="nav_cour">
                        <div id="f_div_cour">
                            <ul id="ul_1">
                                <li>
                                    <ul class="li_1" onclick="display()">Lesson Name</ul>
                                    <ul class="ul_2">
                                        <li class="li_2"><a href="#">Lesson 1:</a></li>
                                        <li class="li_2"><a href="#">Lesson 2:</a></li>
                                        <li class="li_2"><a href="#">Lesson 3:</a></li>
                                        <li class="li_2"><a href="#">Lesson 4:</a></li>
                                        <li class="li_2"><a href="#">Lesson 5:</a></li>
                                        <li class="li_2"><a href="#">Lesson 6:</a></li>
                                        <li class="li_2"><a href="#">Lesson 7:</a></li>
                                        <li class="li_2"><a href="#">Lesson 8:</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <ul class="li_3" onclick="show()">Lesson Name</ul>
                                    <ul class="ul_3">
                                        <li class="li_2"><a href="#">Lesson 1:</a></li>
                                        <li class="li_2"><a href="#">Lesson 2:</a></li>
                                        <li class="li_2"><a href="#">Lesson 3:</a></li>
                                        <li class="li_2"><a href="#">Lesson 4:</a></li>
                                        <li class="li_2"><a href="#">Lesson 5:</a></li>
                                        <li class="li_2"><a href="#">Lesson 6:</a></li>
                                        <li class="li_2"><a href="#">Lesson 7:</a></li>
                                        <li class="li_2"><a href="#">Lesson 8:</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <ul class="li_4" onclick="show()">Lesson Name</ul>
                                    <ul class="ul_4">
                                        <li class="li_2"><a href="#">Lesson 1:</a></li>
                                        <li class="li_2"><a href="#">Lesson 2:</a></li>
                                        <li class="li_2"><a href="#">Lesson 3:</a></li>
                                        <li class="li_2"><a href="#">Lesson 4:</a></li>
                                        <li class="li_2"><a href="#">Lesson 5:</a></li>
                                        <li class="li_2"><a href="#">Lesson 6:</a></li>
                                        <li class="li_2"><a href="#">Lesson 7:</a></li>
                                        <li class="li_2"><a href="#">Lesson 8:</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <ul class="li_5" onclick="show()">Lesson Name</ul>
                                    <ul class="ul_5">
                                        <li class="li_2"><a href="#">Lesson 1:</a></li>
                                        <li class="li_2"><a href="#">Lesson 2:</a></li>
                                        <li class="li_2"><a href="#">Lesson 3:</a></li>
                                        <li class="li_2"><a href="#">Lesson 4:</a></li>
                                        <li class="li_2"><a href="#">Lesson 5:</a></li>
                                        <li class="li_2"><a href="#">Lesson 6:</a></li>
                                        <li class="li_2"><a href="#">Lesson 7:</a></li>
                                        <li class="li_2"><a href="#">Lesson 8:</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>

                <div id="sc_two">
                    <div id="ct">
                        <div class="lesson-title">
                            <h1>Lesson Name</h1>
                        </div>
                        <div class="video">
                            <video controls preload="none" src="https://drive.google.com/file/d/1HaoOlveOWvYQev_84yKopZPRjcmBnM4M/view" controls></video>
                        </div>
                        <hr>

                        <div class="document">
                            <h2>Document</h2>
                            <p class="show-read-more">This is a very long paragraph...
                            </p>


                            <a href="#" class="previous">&#8249;</a>
                            <a href="#" class="next">&#8250;</a>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <script>
        $(document).ready(function () {
            var maxLength = 5;
            $(".show-read-more").each(function () {
                var myStr = $(this).text();
                if ($.trim(myStr).length > maxLength) {
                    var newStr = myStr.substring(0, maxLength);
                    var removedStr = myStr.substring(maxLength, $.trim(myStr).length);
                    $(this).empty().html(newStr);
                    $(this).append(' <a href="javascript:void(0);" class="read-more">...read more</a>');
                    $(this).append('<span class="more-text">' + removedStr + '</span>');
                }
            });
            $(".read-more").click(function () {
                $(this).siblings(".more-text").contents().unwrap();
                $(this).remove();
            });
        });
        $(".li_1").click(function () {
            $(".ul_2").toggleClass("display");
        });
        $(".li_3").click(function () {
            $(".ul_3").toggleClass("display");
        });
        $(".li_4").click(function () {
            $(".ul_4").toggleClass("display");
        });
        $(".li_5").click(function () {
            $(".ul_5").toggleClass("display");
        });
    </script>
</html>
