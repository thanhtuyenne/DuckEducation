<%-- 
    Document   : discusion
    Created on : Oct 24, 2021, 3:16:53 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Comment</title>
        <script src="https://kit.fontawesome.com/a0a7c0f0d8.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/toolbar.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/<%=lib.Web.DISCUSSION%>/CSS/index.css">
    </head>
    <body onload="hide_comment()">
        <%@include file="../html/header-option.jsp" %>
        <div class="disc" id="disc-id">
            <!-- Your Input to Disscussion -->
            <div class="inf-course" style="min-width: 1325px; padding: 5px 0;">
                <h2 style="margin-left: 10px;">Name Course</h2>
            </div>
            <div class="disc-contener">
                <div class="header-disc">
                    <img src="${pageContext.request.contextPath}/Resource/img/avt.png" alt="avatar" class="img-avt" />
                    <textarea placeholder="Your discussion..." class="ip-disc" id="post-discusion-value"></textarea>
                    <button type="submit" class="btn btn-post" id="post-discusion" onclick="postDiscusion()">
                        POST
                    </button>
                </div>
                <p id="dis_checkIp">INVALID</p>

                <!-- Body Disscussion -->
                <div class="body-disc">
                    <!-- add div right there -->
                    <div id="container-discusion"></div>
                    <!-- posted disscussion -->
                    <div class="posted-disc" id="test_id_2">
                        <div class="username">
                            <img src="${pageContext.request.contextPath}/Resource/img/avt.png" alt="avatar" class="img-avt" />
                        </div>
                        <textarea class="line-disc" id="test_id" readonly>
    Lorem ipsum dolor sit amet conse ctetur adip iscing elit Proin rhoncus urna dictum.Lorem ipsum dolor sit amet conse ctetur adip iscing elit Proin rhoncus urna dictum
    Lorem ipsum dolor sit amet conse ctetur adip iscing elit Proin rhoncus urna dictum.Lorem ipsum dolor sit amet conse ctetur adip iscing elit Proin rhoncus urna dictum
                        </textarea>
                        <button class="btn btn-edit" id="test_id_1" onclick="edit(this.id)">
                            EDIT
                        </button>
                    </div>
                    <div class="disc-react" id="post-form">
                        <button class="btn btn-like">
                            LIKE <i class="far fa-thumbs-up"></i>
                        </button>
                        <button class="btn btn-cmt" onclick="hide_comment()">
                            COMMENT <i class="far fa-comment-dots"></i>
                        </button>
                    </div>

                    <!-- Cmt in another post -->
                    <div class="cmt-in-cmt" id="myDIV">
                        <div class="ur-new-cmt">
                            <div class="username">
                                <img src="${pageContext.request.contextPath}/Resource/img/avt.png" alt="avatar" class="img-avt" />
                            </div>
                            <textarea placeholder="Your discussion..." class="ip-disc" id="post-comment-value"></textarea>
                            <button type="submit" class="btn btn-post" id="post-comment" onclick="postComment()">
                                POST
                            </button>
                        </div>
                        <p id="com_checkIp">INVALID</p>

                        <div id="container-comment"></div>

                        <div class="oth-cmted">
                            <div class="username">
                                <img src="${pageContext.request.contextPath}/Resource/img/avt.png" alt="avatar" class="img-avt img-oth" />
                            </div>
                            <textarea class="line-disc" readonly>
    Lorem ipsum dolor sit amet conse ctetur adip iscing elit Proin rhonc us urna dictum
                            </textarea>
                            <button class="btn btn-like">
                                LIKE <i class="far fa-thumbs-up"></i>
                            </button>
                        </div>
                        <!-- <div class="disc-react">
                  </div> -->
                    </div>
                </div>
            </div>
            <center style="color: rgb(180, 180, 180);">no more</center>
        </div>

        <script>
            const textarea = document.querySelectorAll("textarea");
            textarea.forEach((element) => {
                element.addEventListener("keydown", (e) => {
                    element.style.height = "40px";
                    let scHeight = e.target.scrollHeight;
                    element.style.height = `${scHeight}px`;
                });
            });

            function resetArea(element) {
                element.style.height = "40px";

            }
            window.onload = function () {
                hide_comment();
            };

            function hide_comment() {
                var x = document.getElementById("myDIV");
                if (x.style.display === "none") {
                    x.style.display = "block";
                } else {
                    x.style.display = "none";
                }
            }

            function autoheight() {
                $(".line-disc").each(function () {
                    $(this).height(this.scrollHeight);
                });
            }

            $(document).ready(function () {
                autoheight();
            });

            function postDiscusion() {
                var ms = document.getElementById("dis_checkIp");
                var textarea = document.getElementById("post-discusion-value");
                var result = textarea.value;
                if (!result.trim() == "") {
                    ms.style.display = "none";

                    jQuery("#container-discusion").append(
                            '<div class="posted-disc"><div class="username"><img src="${pageContext.request.contextPath}/Resource/img/avt.png" alt="avatar" class="img-avt" /></div>' +
                            '<textarea class="line-disc" readonly>' +
                            result +
                            "</textarea>" +
                            '<button class="btn btn-edit">EDIT</button></div><div class="disc-react"><button class="btn btn-like">LIKE <i class="far fa-thumbs-up"></i></button><button class="btn btn-cmt" onclick="hide_comment()">COMMENT <i class="far fa-comment-dots"></i></button></div>'
                            );
                    autoheight();
                } else {
                    ms.style.display = "block";
                }

                textarea.value = "";
                resetArea(textarea);
                //clean text area when submit
            }

            function postComment() {
                var ms = document.getElementById("com_checkIp");

                var textarea = document.getElementById("post-comment-value");
                var result = textarea.value;
                if (!result.trim() == "") {
                    ms.style.display = "none";

                    jQuery("#container-comment").append(
                            '<div class="oth-cmted"><div class="username"><img src="${pageContext.request.contextPath}/Resource/img/avt.png" alt="avatar" class="img-avt img-oth" /></div>' +
                            '<textarea  class="line-disc" readonly>' +
                            result +
                            "</textarea>" +
                            '<button class="btn btn-like">LIKE <i class="far fa-thumbs-up"></i></div>'
                            );
                    autoheight();
                } else {
                    ms.style.display = "block";
                }
                textarea.value = ""; //clean text area when submit
                resetArea(textarea);

            }

            function edit() {
                var elem = document.getElementById("test_id_1");
                if (elem.innerHTML == "EDIT") {
                    elem.innerHTML = "DONE";
                    var area = document.getElementById("test_id");
                    area.readOnly = false;
                    area.style.borderStyle = "solid";


                } else {
                    elem.innerHTML = "EDIT";
                    var area = document.getElementById("test_id");
                    area.readOnly = true;
                    area.style.borderStyle = "none";
                }
            }
            $(document).ready(function () {
                $(".btn-like").click(function () {
                    $(this).toggleClass("active-like");
                });
            });

            $(document).ready(function () {
                $(".btn-cmt").click(function () {
                    $(this).toggleClass("active-cmt");
                });
            });
        </script>
    </body>
</html>
