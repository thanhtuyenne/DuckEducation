<%-- 
    Document   : setting-site
    Created on : Oct 22, 2021, 11:31:36 AM
    Author     : Admin
--%>

<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="lib.Web"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!DOCTYPE html>
    <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Document</title>
            <link rel="stylesheet" href="${pageContext.request.contextPath}/<%=lib.Web.SETTING%>/CSS/index.css"/>
            <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/toolbar.css"/>
        </head>

        <body>
            <!-- header -->
            <div class="header">
                <%@include file="../../Resource/html/header-option.jsp" %>
            </div>
            <!-- container -->
            <div class="container">
                <div class="wrapper">
                    <div class="title">
                        <i class="fas fa-cog icon-settings"></i>
                        <span class="text-settings">Settings</span>
                    </div>
                    <form action="setting" method="POST">
                        <div class="text-changepass">
                            <span>CHANGE PASSWORD</span>
                        </div>
                        <div class="row text-pass">
                            <span>Old Password</span>
                            <input type="password" placeholder="Old Password" name="oldpw" required>
                        </div>
                        <div class="pass"><a href="${pageContext.request.contextPath}/control?button-control=forgot-password">Forgot password?</a></div>
                        <div class="row text-pass">
                            <span>New Password</span>
                            <input type="password" placeholder="New Password" name="newpw" required>
                        </div>
                        <div class="row text-pass">
                            <span>Confirm Password</span>
                            <input type="password" placeholder="Confirm New Password" name="confirmpw"  required>
                        </div>
                        <div class="button">
                            <input id="myBtn" type="submit" value="Save" name="changepass">
                            <!--<input id="myBtn" type="submit" value="Save" onclick="sendRedirect(this)">-->
                            <!-- id="myModal" -> modal(css) -->
                        </div>
                    </form>
                </div>
            </div>
            <!-- footer -->
            <div class="footer">

            </div>

            <div class="modal js-modal ${requestScope.message==null?"":"open"}">
                <div class="modal-container">
                    <div class="modal-close js-modal-close" onclick="HideModal()">
                        <i class="ti-close"></i>
                    </div>
                    <div class="content-noti">
                        <i class="ti-check"></i>${requestScope.message}
                    </div>
                    <div class="btn-close" onclick="HideModal()">
                        <input id="btn-close" type="submit" value="Close">
                    </div>
                </div>
            </div>
        </body>
        <script>
            const modalclose = document.querySelector('.js-modal-close')
            const modalbtnclose = document.querySelector('.btn-close')
            const modal = document.querySelector('.js-modal')

            function ShowModal() {
                modal.classList.add('open')
            }

            function HideModal() {
                modal.classList.remove('open')
            }

            function hide() {
                var span = document.getElementsByClassName("close")[0];
                var modal = document.getElementById("myModal");

                modal.style.display = "none";
            }
// When the user clicks anywhere outside of the modal, close it
            window.onclick = function (event) {
                var modal = document.getElementById("myModal");
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }
        </script>
    </html>
</body>
</html>
