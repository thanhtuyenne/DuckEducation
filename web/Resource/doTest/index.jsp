<%-- 
    Document   : test_prepare
    Created on : Oct 29, 2021, 8:49:37 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/<%=lib.Web.DASHBOARD%>/CSS/index.css"/>
    </head>
    <body>
        <div class="main">
            <!-- header -->
            <div class="header">
            </div>
            <div class="modal">
                <div class="modal-container">
                    <div class="test-name">
                        TEST NAME
                    </div>
                    <div class="description">
                        <span>DESCRIPTION: </span>
                        <span>Lorem ipsum dolor sit amet conse ctetur adip iscing elit Proin rhonc us urna dictum.</span>
                    </div>
                    <button id="btn-start">START</button>
                    <div class="grade">
                        <div class="text-grade">
                            <h3>Receive Grade</h3>
                            <p>To Pass 80% or higher</p>
                        </div>
                        <div class="point">
                            <h3>Grade</h3>
                            <p>---/---</p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- footer -->
            <div class="footer">
            </div>
        </div>
    </body>
</html>
