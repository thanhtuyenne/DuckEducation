<%-- 
    Document   : index
    Created on : Oct 18, 2021, 12:02:08 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" href="CSS/home.css">
        <link rel="stylesheet" href="CSS/panel.css">
        <link rel="stylesheet" href="CSS/toolbar.css">
        <link rel="stylesheet" href="CSS/footer.css">
        <link rel="stylesheet" href="CSS/courses.css">
        <link rel="stylesheet" href="CSS/course-discription.css">
        <script type="text/javascript" src="JS/sendRedirect.js"></script>
        <title>DUCK EDU</title>
        <style>
            .home-contenter{
                margin-top: 95px;
            }
        </style>
    </head>
    <body>
        <header>
            <%@include file="Resource/html/header-home.jsp" %>
        </header>
        <div class="home-contenter">
            <div class="hcenter ">
                <nav>
                    <h2>Popular courses</h2>
                </nav>
            </div>
            <%@include file="Resource/html/courses.jsp" %>
            <div class="hcenter ">
                <h2>Courses</h2>
            </div>
            <%@include file="Resource/html/courses.jsp" %>
        </div>
        <!-- Modal1 -->
        <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <div class="modal-title">
                            <h4>Modal Header Modal HeaderModal HeaderModal HeaderModal Header</h4>
                            <img class="image" src="https://vuongquocanh.com/wp-content/uploads/2018/03/england-wal.jpg">
                        </div>

                        <div class="modal-body">
                            <div class="title-description">
                                <p>Course Description</p>

                                <P class="text-description">
                                    .................................................................................................................................................................................................................
                                </p>
                            </div>
                            <div>
                                <p class="title-description">Course Objectives</p>

                                <P class="text-description">
                                    .................................................................................................................................................................................................................
                                </p>
                            </div>
                            <div>
                                <p class="title-description">Course Structure</p>

                                <P class="text-description">
                                    .................................................................................................................................................................................................................
                                </p>
                            </div>
                            <div>
                                <p class="title-description">Course Requirement</p>

                                <P class="text-description">
                                    .................................................................................................................................................................................................................
                                </p>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="button-38 btn btn-primary btn-lg" value="login" name="button-control" onclick="sendRedirect(this)" >Enroll</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- modal 2 -->
        <div class="modal fade" id="myModal2" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <div class="modal-title">
                            <h4>Modal 22222</h4>
                            <img class="image" src="https://vuongquocanh.com/wp-content/uploads/2018/03/england-wal.jpg">
                        </div>

                        <div class="modal-body">
                            <div class="title-description">
                                <p>Course Description</p>

                                <P class="text-description">
                                    .................................................................................................................................................................................................................
                                </p>
                            </div>
                            <div>
                                <p class="title-description">Course Objectives</p>

                                <P class="text-description">
                                    .................................................................................................................................................................................................................
                                </p>
                            </div>
                            <div>
                                <p class="title-description">Course Structure</p>

                                <P class="text-description">
                                    .................................................................................................................................................................................................................
                                </p>
                            </div>
                            <div>
                                <p class="title-description">Course Requirement</p>

                                <P class="text-description">
                                    .................................................................................................................................................................................................................
                                </p>
                            </div>

                        </div>
                         <div class="modal-footer">
                            <button type="submit" class="button-38 btn btn-primary btn-lg" value="login" name="button-control" onclick="sendRedirect(this)" >Enroll</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer>
            <%@include file="Resource/html/footer.jsp" %>
        </footer>
    </body>
</html>
