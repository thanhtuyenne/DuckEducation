<%-- 
    Document   : admin
    Created on : Oct 6, 2021, 7:54:40 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Admin Home</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link rel="stylesheet" href="../../CSS/toolbar.css">
        <link rel="stylesheet" href="../../CSS/footer.css">
        <link rel="stylesheet" href="../../CSS/courses.css">
        <link rel="stylesheet" href="../../CSS/panel.css">
        <link rel="stylesheet" href="CSS/admin.css">
        <link rel="stylesheet" href="CSS/createTeacher.css">
        <link rel="stylesheet" href="../../CSS/form.css">
        <link rel="stylesheet" href="CSS/teacherAccount.css">
    </head>

    <body>
        <header>
            <%@include file="../html/header-option.jsp" %>
        </header>
        <nav class="admin_nav">
            <div class="sidebar">
                <ul class="sidebar-list">
                    <li class="sidebar-item">
                        <a href="#" class="btn-act" onclick="show()">Account <span class="fa fa-caret-down first"></span
                            ></a>
                        <ul class="act-list">
                            <li><a href="#createTeacher" onclick="">New Account</a></li>
                            <li><a href="#teacherProfile" onclick="editacc()">Teacher Account</a></li>
                        </ul>
                    </li>
                    <li class="sidebar-item">
                        <a href="#" class="btn-course">Courses <span class="fa fa-caret-down second"></span
                            ></a>
                        <ul class="course-list">
                            <li><a href="#courses" onclick="addcourse()">Add Course</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="content">
            <nav>
                <div class="panel " id="createTeacher">
                    <div class="panel-create-teacher ">
                        <div class="text-create-teacher">
                            <h1>
                                CREATE TEACHER ACCOUNT
                            </h1>
                        </div>
                        <div class=" form">
                            <form class="input-create-teacher" action="#" method="POST" onsubmit="return checkAllData()">

                                <div class="inline">
                                    <input type="text" name="firstname" id="firstname" placeholder="First Name" required>
                                    <input type="text" name="lastname" id="lastname" placeholder="Last Name" required>
                                </div>

                                <span class="error" id="errFirstname">First Name must be characters. </span>
                                <span class="error" id="errLastname">Last Name must be characters. </span>

                                <div class="inline">
                                    <input type="text" name="username" id="username" placeholder="Username" required>
                                </div>

                                <span class="error" id="errUsername">Username must be from 6 to 30 characters and no start number.</span>
                                <div class="inline">
                                    <input type="password" name="password" id="password" placeholder="Password" required>
                                </div>

                                <span class="error" id="errPassword">Password must be from 6 to 30 characters.</span>
                                <div class="inline">
                                    <input type="password" name="confirm-password" id="confirm-password" placeholder="Confirm Password" required>
                                </div>
                                <span class="error" id="errConfpass">Password doesn't match.</span>
                                <div class="inline">
                                    <input type="date" name="dob" id="dob" placeholder="Date of Birth" required>
                                </div>
                                <span class="error" id="errDob">Date of Birth must be less than current day</span>
                                <div class="inline">
                                    <input type="text" name="email" id="email" placeholder="Email" required>
                                    <input type="text" name="phone" id="phone" placeholder="Phone Number" required>
                                </div>
                                <div class="inline">
                                    <input type="text" name="address" id="address" placeholder="Address" required>
                                </div>
                                <div class="inline">
                                    <input type="text" name="major" id="major" placeholder="Major">
                                </div>
                                <span class="error" id="errEmail">Email don't valid</span>
                                <span class="error" id="errPhone">Phone must be 10 number</span>

                                <span class="error" id="errAddress">Address don't valid. Please enter your address.</span>

                                <span class="error" id="errMajor">Major don't valid.</span>
                                <button class="btn-register button-38">Register</button>
                                <p id="successful">Successful</p>
                                <p id="fail">Fail</p>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="panel" id="teacherProfile">
                    <div class="teacherProfile form500">
                        <div>
                            <nav>
                                <h1>Teacher Profile</h1>
                            </nav>
                        </div>

                        <div class="content-form">
                            <div class="form ">
                                <form action="admin.jsp#editTeacher">
                                    <div class="form-header">
                                        <span>
                                            <h2>Nguyen Tran Thanh Thu Y</h2>
                                        </span>
                                        <span>
                                            <button class="button-38" role="button">EDIT</button>
                                        </span>
                                    </div>
                                    <div class="inline">
                                        <input id="firstname" type="text" name="fname" value="Nguyen" disabled>
                                        <input id="lastname" type="text" name="lname" value="Thuy" disabled>
                                    </div>
                                    <div class="inline">
                                        <input id="dob" type="text" name="dob" value="24-2-1996" disabled>
                                        <input id="major" type="text" name="major" value="Major" disabled>
                                    </div>

                                    <div class="inline">
                                        <input id="email" type="email" name="email" value="ThuyMDCE@123.abc.com" disabled>
                                        <input id="phone" type="phone" name="Phone" value="0123123123" disabled>
                                    </div>
                                    <div class="inline">
                                        <input id="address" type="address" name="address" value="123. DL" disabled>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel" id="editTeacher">
                    <div class="Edit_Teacher_Profile panel-center">
                        <div>
                            <nav>
                                <h1>Edit Profile</h1>
                            </nav>
                        </div>

                        <div class="content-form form500">
                            <div class="form-header">
                                <span>
                                    <h2>Nguyen Tran Thanh Thu Y</h2>
                                </span>

                            </div>
                            <div class="form ">
                                <form action="admin.jsp#teacherProfile" method="get">
                                    <div class="inline">
                                        <input id="firstname" type="text" name="fname">
                                        <input id="lastname" type="text" name="lname">
                                    </div>
                                    <div class="inline">
                                        <input id="dob" type="text" name="dob">
                                        <input id="major" type="text" name="major">
                                    </div>

                                    <div class="inline">
                                        <input id="email" type="email" name="email">
                                        <input id="phone" type="phone" name="Phone">
                                    </div>
                                    <div class="inline">
                                        <input id="address" type="address" name="address">
                                    </div>
                                    <button class="button-39" role="button">Save</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel" id="courses">
                    <button type="button" class="btn btn-primary btn-block btn-lg" data-toggle="modal" data-target="#myModal">
                        Add Course
                    </button>


                    <!-- The Modal -->
                    <div class="modal" id="myModal">
                        <div class="modal-dialog">
                            <div class="modal-content">

                                <!-- Modal Header -->
                                <div class="modal-header">
                                    <h4 class="modal-title">Add Teacher To This Course</h4>
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                </div>
                                <span>
                                    <div class="search">
                                        <form action="#" method="GET">
                                            <button class="icon btn" id="searchIcon" type="submit"><img src="img/search.png" alt=""></button>
                                            <input type="text" id="searchInput" placeholder="Search">
                                        </form>
                                    </div>
                                </span>


                                <!-- Modal body -->
                                <div class="modal-body">
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>Firstname</th>
                                                <th>Lastname</th>
                                                <th>Teach</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Nguyen Van</td>
                                                <td>Phu</td>
                                                <td>
                                                    <input class="checkboxId" type="checkbox" name="checkbox1" value="teach">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Nguyen Van</td>
                                                <td>Phu</td>
                                                <td>
                                                    <input class="checkboxId" type="checkbox" name="checkbox1" value="teach">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Nguyen Van</td>
                                                <td>Phu</td>
                                                <td>
                                                    <input class="checkboxId" type="checkbox" name="checkbox1" value="teach">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Nguyen Van</td>
                                                <td>Phu</td>
                                                <td>
                                                    <input class="checkboxId" type="checkbox" name="checkbox1" value="teach">
                                                </td>
                                            </tr>


                                        </tbody>
                                    </table>

                                </div>

                                <div class="modal-footer">
                                    <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                                </div>

                            </div>
                        </div>
                    </div>
                    <main>
                        <section class="cards">
                            <div class="card">
                                <div class="card__image-container">
                                    <img src="https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1200&q=80" alt="Detailed image description would go here." />
                                </div>
                                <div class="card__content">
                                    <p class="card__title text--medium">
                                        Here's the Title of an Awesome Course
                                    </p>
                                    <p class="card__detail text--medium">
                                        Noi dung c?a môn h?c bla bla bla bla
                                    </p>
                                    <div class="card__info">

                                        <p class="card__price text--medium">NguyenVanPhu</p>
                                    </div>
                                </div>
                            </div>

                            <div class="card">
                                <div class="card__image-container">
                                    <img src="https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1200&q=80" alt="Detailed image description would go here." />
                                </div>
                                <div class="card__content">
                                    <p class="card__title text--medium">
                                        Here's the Title of an Awesome Course
                                    </p>
                                    <p class="card__detail text--medium">
                                        Noi dung c?a môn h?c bla bla bla bla
                                    </p>
                                    <div class="card__info">

                                        <p class="card__price text--medium">NguyenVanPhu</p>
                                    </div>
                                </div>
                            </div>

                            <div class="card">
                                <div class="card__image-container">
                                    <img src="https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1200&q=80" alt="Detailed image description would go here." />
                                </div>
                                <div class="card__content">
                                    <p class="card__title text--medium">
                                        Here's the Title of an Awesome Course
                                    </p>
                                    <p class="card__detail text--medium">
                                        Noi dung c?a môn h?c bla bla bla bla
                                    </p>
                                    <div class="card__info">

                                        <p class="card__price text--medium">NguyenVanPhu</p>
                                    </div>
                                </div>
                            </div>

                            <div class="card">
                                <div class="card__image-container">
                                    <img src="https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1200&q=80" alt="Detailed image description would go here." />
                                </div>
                                <div class="card__content">
                                    <p class="card__title text--medium">
                                        Here's the Title of an Awesome Course
                                    </p>
                                    <p class="card__detail text--medium">
                                        Noi dung c?a môn h?c bla bla bla bla
                                    </p>
                                    <div class="card__info">

                                        <p class="card__price text--medium">NguyenVanPhu</p>
                                    </div>
                                </div>
                            </div>

                            <div class="card">
                                <div class="card__image-container">
                                    <img src="https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1200&q=80" alt="Detailed image description would go here." />
                                </div>
                                <div class="card__content">
                                    <p class="card__title text--medium">
                                        Here's the Title of an Awesome Course
                                    </p>
                                    <p class="card__detail text--medium">
                                        Noi dung c?a môn h?c bla bla bla bla
                                    </p>
                                    <div class="card__info">

                                        <p class="card__price text--medium">NguyenVanPhu</p>
                                    </div>
                                </div>
                            </div>

                            <div class="card">
                                <div class="card__image-container">
                                    <img src="https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1200&q=80" alt="Detailed image description would go here." />
                                </div>
                                <div class="card__content">
                                    <p class="card__title text--medium">
                                        Here's the Title of an Awesome Course
                                    </p>
                                    <p class="card__detail text--medium">
                                        Noi dung c?a môn h?c bla bla bla bla
                                    </p>
                                    <div class="card__info">

                                        <p class="card__price text--medium">NguyenVanPhu</p>
                                    </div>
                                </div>
                            </div>

                        </section>
                    </main>
                </div>
            </nav>
        </div>

        <footer class="footer ">
            <%@include file="../html/footer.jsp" %>
        </footer>
    </body>
    <script>
        $(".btn-act").click(function () {
            $(".act-list").toggleClass("show");
        });
        $(".btn-course").click(function () {
            $(".course-list").toggleClass("show");
        });
    </script>

</html>