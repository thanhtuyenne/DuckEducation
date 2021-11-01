<%-- 
    Document   : send_code
    Created on : Oct 26, 2021, 9:48:42 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- <title>Login Form | CodingLab</title> -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/login-signup-register.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
        <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>  <%--import JSTL --%>

    </head>

    <body>
        <div class="container">
            <div class="wrapper">
                <div class="title"><span>Enter Vetify Code</span></div>
                <form action="send_code" method="post">
                    <div class="row">
                        <i class="fas fa-user"></i>
                        <input type="text" placeholder="Code" name="code" required>
                    </div>
                    <div class="row button">
                        <input type="submit" id="myBtn" value="sendcode"  name="control">
                    </div>
                </form>
            </div>
        </div>

        <div id="myModal2" class="modal2">
            <!-- Modal content -->
            <div class="modal-content2">
                <span class="close" >&times;</span>
                <p> There is no account with this email</p>
            </div>
        </div>
    </script>
</body>
</html>
