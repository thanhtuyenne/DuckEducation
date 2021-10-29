<%-- 
    Document   : dashboard
    Created on : Oct 18, 2021, 9:17:28 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <title>Duck Edu</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/<%=lib.Web.DASHBOARD%>/CSS/index.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/dashboard.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/toolbar.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/footer.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/courses.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/panel.css">
        <script type="text/javascript" src="${pageContext.request.contextPath}/JS/sendRedirect.js"></script>

    </head>
    <body>
        <header>
            <%@include file="../../Resource/html/header-option.jsp" %>
        </header>
        <div class="home-contenter">
            <div class="hcenter ">
                <nav>
                    <h2>Learing Course</h2>
                </nav>
            </div>
            <div class="PCourses panel .scrollbar-hidden">
                <nav>
                    <main>
                        <section class="cards" >

                            <div class="card" value="study" onclick="sendRedirect(this)">
                                <div class="card__image-container ">
                                    <img src="https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1200&q=80 " alt="Detailed image description would go here. " />
                                </div>
                                <div class="card__content ">
                                    <p class="card__title text--medium ">
                                        Here's the Title of an Awesome Course
                                    </p>
                                    <p class="card__detail text--medium ">
                                        Noi dung các môn học bla bla bla bla
                                    </p>
                                    <div class="card__info ">

                                        <p class="card__price text--medium ">NguyenVanPhu</p>
                                    </div>
                                </div>
                            </div>

                            <div class="card ">
                                <div class="card__image-container ">
                                    <img src="https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1200&q=80 " alt="Detailed image description would go here. " />
                                </div>
                                <div class="card__content ">
                                    <p class="card__title text--medium ">
                                        Here's the Title of an Awesome Course
                                    </p>
                                    <p class="card__detail text--medium ">
                                        Noi dung các môn học bla bla bla bla
                                    </p>
                                    <div class="card__info ">

                                        <p class="card__price text--medium ">NguyenVanPhu</p>
                                    </div>
                                </div>
                            </div>

                            <div class="card ">
                                <div class="card__image-container ">
                                    <img src="https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1200&q=80 " alt="Detailed image description would go here. " />
                                </div>
                                <div class="card__content ">
                                    <p class="card__title text--medium ">
                                        Here's the Title of an Awesome Course
                                    </p>
                                    <p class="card__detail text--medium ">
                                        Noi dung các môn học bla bla bla bla
                                    </p>
                                    <div class="card__info ">

                                        <p class="card__price text--medium ">NguyenVanPhu</p>
                                    </div>
                                </div>
                            </div>

                            <div class="card ">
                                <div class="card__image-container ">
                                    <img src="https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1200&q=80 " alt="Detailed image description would go here. " />
                                </div>
                                <div class="card__content ">
                                    <p class="card__title text--medium ">
                                        Here's the Title of an Awesome Course
                                    </p>
                                    <p class="card__detail text--medium ">
                                        Noi dung các môn học bla bla bla bla
                                    </p>
                                    <div class="card__info ">

                                        <p class="card__price text--medium ">NguyenVanPhu</p>
                                    </div>
                                </div>
                            </div>

                            <div class="card ">
                                <div class="card__image-container ">
                                    <img src="https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1200&q=80 " alt="Detailed image description would go here. " />
                                </div>
                                <div class="card__content ">
                                    <p class="card__title text--medium ">
                                        Here's the Title of an Awesome Course
                                    </p>
                                    <p class="card__detail text--medium ">
                                        Noi dung các môn học bla bla bla bla
                                    </p>
                                    <div class="card__info ">

                                        <p class="card__price text--medium ">NguyenVanPhu</p>
                                    </div>
                                </div>
                            </div>

                            <div class="card ">
                                <div class="card__image-container ">
                                    <img src="https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1200&q=80 " alt="Detailed image description would go here. " />
                                </div>
                                <div class="card__content ">
                                    <p class="card__title text--medium ">
                                        Here's the Title of an Awesome Course
                                    </p>
                                    <p class="card__detail text--medium ">
                                        Noi dung các môn học bla bla bla bla
                                    </p>
                                    <div class="card__info ">

                                        <p class="card__price text--medium ">NguyenVanPhu</p>
                                    </div>
                                </div>
                            </div>

                        </section>
                    </main>
                </nav>
            </div>
            <div class="hcenter ">
                <h2>Courses</h2>
            </div>
            <div class="course panel .scrollbar-hidden">
                <main>
                    <section class="cards ">
                        <div class="card ">
                            <div class="card__image-container ">
                                <img src="https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1200&q=80 " alt="Detailed image description would go here. " />
                            </div>
                            <div class="card__content ">
                                <p class="card__title text--medium ">
                                    Here's the Title of an Awesome Course
                                </p>
                                <p class="card__detail text--medium ">
                                    Noi dung các môn học bla bla bla bla
                                </p>
                                <div class="card__info ">

                                    <p class="card__price text--medium ">NguyenVanPhu</p>
                                </div>
                            </div>
                        </div>

                        <div class="card ">
                            <div class="card__image-container ">
                                <img src="https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1200&q=80 " alt="Detailed image description would go here. " />
                            </div>
                            <div class="card__content ">
                                <p class="card__title text--medium ">
                                    Here's the Title of an Awesome Course
                                </p>
                                <p class="card__detail text--medium ">
                                    Noi dung các môn học bla bla bla bla
                                </p>
                                <div class="card__info ">

                                    <p class="card__price text--medium ">NguyenVanPhu</p>
                                </div>
                            </div>
                        </div>

                        <div class="card ">
                            <div class="card__image-container ">
                                <img src="https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1200&q=80 " alt="Detailed image description would go here. " />
                            </div>
                            <div class="card__content ">
                                <p class="card__title text--medium ">
                                    Here's the Title of an Awesome Course
                                </p>
                                <p class="card__detail text--medium ">
                                    Noi dung các môn học bla bla bla bla
                                </p>
                                <div class="card__info ">

                                    <p class="card__price text--medium ">NguyenVanPhu</p>
                                </div>
                            </div>
                        </div>

                        <div class="card ">
                            <div class="card__image-container ">
                                <img src="https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1200&q=80 " alt="Detailed image description would go here. " />
                            </div>
                            <div class="card__content ">
                                <p class="card__title text--medium ">
                                    Here's the Title of an Awesome Course
                                </p>
                                <p class="card__detail text--medium ">
                                    Noi dung các môn học bla bla bla bla
                                </p>
                                <div class="card__info ">

                                    <p class="card__price text--medium ">NguyenVanPhu</p>
                                </div>
                            </div>
                        </div>

                        <div class="card ">
                            <div class="card__image-container ">
                                <img src="https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1200&q=80 " alt="Detailed image description would go here. " />
                            </div>
                            <div class="card__content ">
                                <p class="card__title text--medium ">
                                    Here's the Title of an Awesome Course
                                </p>
                                <p class="card__detail text--medium ">
                                    Noi dung các môn học bla bla bla bla
                                </p>
                                <div class="card__info ">

                                    <p class="card__price text--medium ">NguyenVanPhu</p>
                                </div>
                            </div>
                        </div>

                        <div class="card ">
                            <div class="card__image-container ">
                                <img src="https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1200&q=80 " alt="Detailed image description would go here. " />
                            </div>
                            <div class="card__content ">
                                <p class="card__title text--medium ">
                                    Here's the Title of an Awesome Course
                                </p>
                                <p class="card__detail text--medium ">
                                    Noi dung các môn học bla bla bla bla
                                </p>
                                <div class="card__info ">

                                    <p class="card__price text--medium ">NguyenVanPhu</p>
                                </div>
                            </div>
                        </div>

                    </section>
                </main>
            </div>
        </div>
        <footer>
            <%@include file="../../Resource/html/footer.jsp" %>
        </footer>
    </body>
</html>
