<%-- 
    Document   : index
    Created on : Oct 23, 2021, 10:19:23 PM
    Author     : Thanh Tuyen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="CSS/style.css" />
        <link rel="stylesheet" href="../../CSS/toolbar.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <style>
            #all_learning_site {
                width: 100%;
                height: auto;
                margin-top: 85px
            }

            #first_learning_site {
                width: 100%;
                height: 120px;
                border: 1px solid black;
                display: flex;
            }

            #second_learning_site {
                width: 100%;
                height: 605px;
                display: flex;
                border-style: none solid solid;
                border-width: 1px;
            }

            #one {
                width: 20%;
                height: 120px;
            }

            #two {
                width: 80%;
                height: 120px;
                text-align: center;
            }

            #one_img {
                width: 50%;
                height: 120px;
                margin-left: 25%;
                margin-right: 25%;
            }

            .one_one {
                width: 100%;
                height: 45%;
                text-align: center;
            }

            .two_two {
                width: 100%;
                height: 45%;
            }

            #name_cour {
                width: 70%;
                height: 100%;
                border: 1px solid black;
                margin-top: 8px;
                margin-left: 15%;
                font-size: 40px;
            }

            .button {
                width: 200px;
                height: auto;
                font-size: 30px;
                float: right;
                margin-right: 50px;
                margin-top: 10px;
            }
            /*********************************************/

            #sc_one {
                width: 20%;
                height: auto;
            }

            #sc_two {
                width: 80%;
                height: 605px;
                overflow: auto;
                border-style: none none none solid;
                border-width: 1px;
                border-color: black;
            }

            #nav_cour {
                width: 100%;
                height: 605px;
                overflow: auto;
            }

            #f_div_cour {
                width: 100%;
                height: auto;
            }

            #ct {
                width: 95%;
                height: auto;
                margin-left: 2%;
                margin-right: 2%;
                overflow-x: auto;
            }

            #ul_1 {
                margin: 0;
                padding: 0;
                list-style: none;
            }

            .li_2 {
                width: 100%;
                height: auto;
                background-color: white;
                font-size: 25px;
            }

            .li_2 a {
                color: black;
                text-decoration: none;
                width: 100%;
                height: auto;
                margin-left: 10px;
                text-align: center;
            }

            .li_1,
            .li_3,
            .li_4,
            .li_5 {
                font-size: 30px;
                border-style: none none solid;
                border-width: 1px;
                width: 100%;
                height: auto;
                margin: 0;
                padding: 0;
                list-style: none;
                text-align: center;
            }

            .ul_2,
            .ul_3,
            .ul_4,
            .ul_5 {
                display: none;
                margin: 0;
                padding: 0;
                list-style: none;
                width: 100%;
            }

            .display {
                display: block;
            }

            .li_1:hover,
            .li_3:hover,
            .li_4:hover,
            .li_5:hover {
                cursor: pointer;
                border-style: none none none solid;
                border-width: 10px;
                border-color: blue;
            }

            .li_2 a:hover {
                cursor: pointer;
                border-style: none none none solid;
                border-width: 10px;
                border-color: rgb(4, 148, 16);
            }

            body {
                scrollbar-gutter: stable both-edges;
            }

            .vertical-menu {
                max-width: 304px;
                display: none;
            }

            .vertical-menu a {
                border-style: groove;
                font-size: 25px;
                text-align: center;
                background-color: #eee;
                color: black;
                display: block;
                padding: 12px;
                text-decoration: none;
            }

            .vertical-menu a:hover {
                background-color: #ccc;
            }

            .title {
                background-color: #04AA6D;
                color: white;
                border-style: groove;
                font-size: 25px;
                text-align: center;
                color: black;
                display: block;
                padding: 12px;
                text-decoration: none;
            }

            #button_add_mooc {
                border: groove;
                text-align: center;
                font-size: 25px;
                background-color: #eee;
                display: block;
                padding: 12px;
                text-decoration: none;
                width: 100%;
            }

            #button_add_mooc button:hover {
                background-color: #ccc;
            }
            /*     */

            .panel-lession {
                display: none;
                font-family: sans-serif;
            }

            .course-name {
                color: #1abc9c;
            }

            .lession-content,
            .test-content {
                border: 1px solid #000;
                padding: 10px 20px;
                text-align: justify;
                display: none;
            }

            .lession,
            .test-content {
                padding-left: 20px;
                color: #1abc9c;
            }

            .text-content {
                color: thistle;
                text-align: justify;
            }

            .lession-page {
                padding-left: 10px;
                display: flex;
                align-items: center;
                position: relative;
                width: fit-content;
            }

            .lession-title {
                margin-right: 5px;
            }

            .lession-no,
            .plus {
                border: 1px solid #000;
                padding: 5px;
                border-radius: 6px;
                width: 20px;
                text-align: center;
                cursor: pointer;
                transition: 0.25s;
            }

            .lession-no:hover,
            .plus:hover,
            .test-no:hover {
                background-color: #1abc9c;
                color: #fff;
            }

            .plus {
                position: relative;
            }

            .active {
                display: block !important;
            }

            .choose-plus {
                border: 1px solid #000;
                padding: 8px;
                width: 100px;
                box-shadow: 1px 2px 2px #777;
                list-style-type: none;
                position: absolute;
                top: -110px;
                right: 0;
                display: none;
                background-color: #fff;
            }

            .choose-content {
                display: block;
                text-align: center;
                letter-spacing: 1px;
                cursor: pointer;
                padding: 8px;
            }

            .choose-content:hover {
                color: turquoise;
            }

            .show {
                display: block;
            }

            .test-no {
                border: 1px solid #000;
                padding: 6px;
                border-radius: 6px;
                transition: 0.25s;
                cursor: pointer;
            }

            #new-lession {
                display: flex;
            }

            #lession-content-3 {
                display: none;
            }

            #lession-content-2 {
                display: none;
            }

            #mooc_2 {
                display: none;
            }
            /*
            add content
            */
            *{
                margin: 0;
                padding: 0;
            }

            .content_all {
                width: 100%;
                height: auto;
            }
            .content_first{
                width: 98%;
                height: 710px;
                margin: 1%;
                overflow: auto;

            }
            .content_second{
                width: auto;
                height: auto;
                float: right;
                margin-bottom: 200px;
            }
            .content_text{
                width: 100%;
                height: auto;
                font-size: 50px;
                resize: none;
                border: none;
                font-weight: bold;
            }
            #content_drop {
                position: relative;
                display: inline-block;
                margin-bottom: 150px;
            }
            /* Dropdown Button */
            .content_dropbtn {
                background-color: #98DBC6;
                color: black;
                font-size: 40px;
                border: none;
                border-radius: 10px;
                cursor: pointer;
                width: 70px;
                height: 70px;
                margin-bottom: 6%;
                box-shadow: 4px 4px 15px 6px rgba(0, 226, 255, 0.3);
            }
            .bt_content{
                width: 100%;
                height: 50px;
                cursor: pointer;
            }
            .content_dropbtn:hover, .content_dropbtn:focus {
                background-color: #07575B;
                color: white;
            }
            .content_drd {
                display: none;
                position: absolute;
                background-color: #f9f9f9;
                min-width: 160px;
                box-shadow: 8px 8px 20px 6px rgba(0,0,0,0.4);
                z-index: 1;
                right: 0;
            }

            .content_drd a {
                color: black;
                padding: 12px 16px;
                text-decoration: none;
            }

            .content_drd .bt_content:hover {
                background-color: #66A5AD;
                color: white;
            }

            .content_show {
                display:block;
            }
        </style>
    </head>
    <body>
        <%@include file="../html/header-option.jsp" %>

        <div id="all_learning_site">
            <div id="first_learning_site">
                <!-- header here -->
            </div>

            <div id="second_learning_site">
                <div id="sc_one">
                    <nav id="nav_cour">
                        <div id="f_div_cour">
                            <!-- mooc bar -->
                            <a class="title" onclick="showDropMenu('.vertical-menu')">Courses</a>
                            <div class="vertical-menu">
                                <a id="1" onclick="showLessonPanel(this.id)">MOOC 1</a>
                                <a id="2" onclick="showLessonPanel(this.id)">MOOC 2</a>
                                <div id="container-mooc"></div>
                                <button id="button_add_mooc" onclick="addMooc()">+</button>
                            </div>
                            <a class="title" onclick="showStudentpanel()">Student</a>

                        </div>
                    </nav>
                </div>
                <div id="sc_two">
                    <!-- <div class="lesson-panel" id="mooc_1">
                                  MOOC1
                              </div>
                              <div class="lesson-panel" id="mooc_2">
                                  MOOC2
                              </div> -->

                    <div id="container-lesson">
                        <div class="panel-lession" id="mooc_1">
                            <h2 class="course-name">Course Name</h2>

                            <div id="main-lession">
                                <div class="lession-content active" id="lession-content-1">
                                    <h3 class="lession" id="lession-1 changeTitle">MOOC1 Lession 1</h3>
                                    <%@include file="template-addContent.jsp" %>
                                </div>
                                <div class="lession-content" id="lession-content-2">
                                    <h3 class="lession" id="lession-2">Lession 2</h3>
                                    <div class="text-content" id="content-2">CONTENT HERE 2</div>
                                </div>
                                <div class="lession-content" id="lession-content-3">
                                    <h3 class="lession" id="lession-3">Lession 3</h3>
                                    <div class="text-content" id="content-3">CONTENT HERE 3</div>
                                </div>
                            </div>
                            <div id="main-test" class="main-test">
                                <h3 class="test-content" id="test-1">CONTENT TEST 1</h3>
                            </div>

                            <div class="lession-page">
                                <span class="lession-title">Lession</span>

                                <div id="new-lession">
                                    <span class="lession-no" id="1" onclick="showcontent(this)">1</span>
                                    <span class="lession-no" id="2" onclick="showcontent(this)">2</span>
                                    <span class="lession-no" id="3" onclick="showcontent(this)">3</span>
                                    <span class="test-no" id="1" onclick="showTest(this)">Test</span>
                                </div>
                                <div class="plus">
                                    <span id="plus-lession">+</span>
                                </div>
                                <ul class="choose-plus" id="box-plus">
                                    <li class="choose-content" onclick="addTest('#mooc_1')">Test</li>
                                    <li class="choose-content" onclick="addLession('#mooc_1')">Lession</li>
                                </ul>
                            </div>
                        </div>

                        <div class="panel-lession" id="mooc_2">
                            <h2 class="course-name">Course Name</h2>
                            <div id="main-lession">
                                <div class="lession-content active" id="lession-content-1">
                                    <h3 class="lession" id="lession-1 changeTitle">MOOC2 Lession 1</h3>
                                    <div class="text-content" id="content-1">CONTENT HERE 1</div>
                                </div>
                                <div class="lession-content" id="lession-content-2">
                                    <h3 class="lession" id="lession-2">Lession 2</h3>
                                    <div class="text-content" id="content-2">CONTENT HERE 2</div>
                                </div>
                                <div class="lession-content" id="lession-content-3">
                                    <h3 class="lession" id="lession-3">Lession 3</h3>
                                    <div class="text-content" id="content-3">CONTENT HERE 3</div>
                                </div>
                            </div>
                            <div id="main-test" class="main-test">
                                <h3 class="test-content" id="test-1">CONTENT TEST 1</h3>
                            </div>

                            <div class="lession-page">
                                <span class="lession-title">Lession</span>
                                <div id="new-lession">
                                    <span class="lession-no" id="1" onclick="showcontent(this)">1</span>
                                    <span class="lession-no" id="2" onclick="showcontent(this)">2</span>
                                    <span class="lession-no" id="3" onclick="showcontent(this)">3</span>
                                    <span class="test-no" id="1" onclick="showTest(this)">Test</span>
                                </div>
                                <div class="plus">
                                    <span id="plus-lession">+</span>
                                </div>
                                <ul class="choose-plus" id="box-plus">
                                    <li class="choose-content" onclick="addTest('#mooc_2')">Test</li>
                                    <li class="choose-content" onclick="addLession('#mooc_2')">Lession</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script>
            var count = 2;

            function showDropMenu(dropObj) {
                $(dropObj).toggleClass("active");
            }

            function addMooc() {
                count++;
                jQuery("#container-mooc").append(
                        " <a id =" +
                        count +
                        ' onclick="showLessonPanel(this.id)">MOOC' +
                        count +
                        "</a>"
                        );
                jQuery("#container-lesson").append(
                        ' <div class="panel-lession" id="mooc_' +
                        count +
                        '">MOOC' +
                        count +
                        "</div>"
                        );
            }

            var idPanelLessonBefore = "1"; //load trang, auto show mooc1
            function showLessonPanel(id) {
                if (idPanelLessonBefore != null) {
                    var LessonPanelBefore = document.getElementById(
                            "mooc_" + idPanelLessonBefore
                            );
                    LessonPanelBefore.style.display = "none"; //hinden panel trc do
                }
                idPanelLessonBefore = id; //luu id cua panel dang mo
                var LessonPanel = document.getElementById("mooc_" + id); //mapping id cua button va id cua panel can show
                LessonPanel.style.display = "block"; //show panel
            }

            function mainPage() {
                var currentPage = document.getElementById("page1").innerHTML;
                $(".lession-content").hide();
                jQuery("#main-lession").append(
                        '<div class="lession-content"><h3 class="lession-name" id="changeTitle">Lession ' +
                        currentPage +
                        '</h3><div class="text-content">CONTENT HERE ' +
                        currentPage +
                        "</div></div>"
                        );
            }

            function changePage() {
                var currentPage = document.getElementById("page2").innerHTML;
                $(".lession-content").hide();
                jQuery("#main-lession").append(
                        '<div class="lession-content"><h3 class="lession-name" id="changeTitle">Lession ' +
                        currentPage +
                        '</h3><div class="text-content">CONTENT HERE ' +
                        currentPage +
                        "</div></div>"
                        );
            }


            $(".plus").click(function () {
                $(".choose-plus").toggleClass("show");
            });



            function addLession(parent_id) {
                var no = $(parent_id + " .lession-no").length;
                var newno = no + 1;
                jQuery(parent_id + " #new-lession").append(
                        '<span class="lession-no" id="' +
                        newno +
                        '" onclick="showcontent(this)">' +
                        newno +
                        "</span>"
                        );
                jQuery(parent_id + " #main-lession").append(
                        '<div class="lession-content" id="lession-content-' +
                        newno +
                        '"><h3 class="lession" id="lession-' +
                        newno +
                        '">Lession ' +
                        newno +
                        '</h3><div class="text-content" id="content-' +
                        newno +
                        '">CONTENT HERE ' +
                        newno +
                        "</div></div>"
                        );
            }

            function addTest(parent_id) {
                var no = $(parent_id + " .test-no").length;
                var newid = no + 1;
                jQuery(parent_id + " #new-lession").append(
                        '<span class="test-no" id="' + newid + '" onclick="showTest(this)">Test</span>'
                        );
                jQuery(parent_id + " #main-test").append(
                        '<h3 class="test-content" id="test-' +
                        newid +
                        '">CONTENT TEST ' +
                        newid +
                        "</h3>"
                        );
            }

            function showcontent(opj) {
                var id = $(opj).attr("id");
                var id_panel = $(opj).parent().parent().parent().attr("id");
                id_panel = "#" + id_panel;
                $(id_panel + " .active").removeClass("active");
                $(id_panel + " #lession-content-" + id).addClass("active");
            }

            function showTest(opj) {
                var id = $(opj).attr("id");
                var id_panel = $(opj).parent().parent().parent().attr("id");
                id_panel = "#" + id_panel;
                $(id_panel + " .active").removeClass("active");
                $(id_panel + " #test-" + id).addClass("active");
            }

//            add contern
            function inputtextarea() {
                const textarea = document.querySelectorAll("textarea");
                textarea.forEach((element) => {
                    element.addEventListener("keydown", (e) => {
                        element.style.width = "100%";
                        element.style.height = "auto";
                        let scHeight = e.target.scrollHeight;
                        element.style.height = `${scHeight}px`;
                    });
                });
            }
            function myFunction(id) {
                document.getElementById(id).classList.toggle("content_show");
            }
            var buttons = document.getElementsByClassName('content_dropbtn');
            var contents = document.getElementsByClassName('content_drd');
            for (var i = 0; i < buttons.length; i++) {
                buttons[i].addEventListener("click", function () {
                    var id = this.value;
                    for (var i = 0; i < contents.length; i++) {
                        contents[i].classList.remove("content_show");
                    }
                    myFunction(id);
                });
            }
            window.addEventListener("click", function () {
                if (!event.target.matches('.content_dropbtn')) {
                    for (var i = 0; i < contents.length; i++) {
                        contents[i].classList.remove("content_show");
                    }
                }
            });
            function content_1() {
                var ct1 = document.createElement("textarea");
                ct1.style.width = "100%";
                ct1.style.height = "auto"
                ct1.style.border = "none";
                ct1.placeholder = "Enter title here......";
                ct1.style.fontSize = "50px";
                ct1.style.resize = "none";
                ct1.style.fontWeight = "bold";
                ct1.rows = "1";
                document.getElementById("content_content").appendChild(ct1);
                inputtextarea();
            }
            function content_2() {
                var ct2 = document.createElement("textarea");
                ct2.style.width = "100%";
                ct2.style.height = "auto"
                ct2.style.border = "none";
                ct2.placeholder = "Description here......";
                ct2.style.fontSize = "40px";
                ct2.style.resize = "none";
                ct2.rows = "1";
                document.getElementById("content_content").appendChild(ct2);
                inputtextarea();
            }
            function content_3() {
                var ct3 = document.createElement("textarea");
                ct3.style.width = "100%";
                ct3.style.height = "auto"
                ct3.style.border = "none";
                ct3.placeholder = "Content here.........";
                ct3.style.fontSize = "30px";
                ct3.style.resize = "none";
                ct3.rows = "1";
                document.getElementById("content_content").appendChild(ct3);
                inputtextarea();
            }
            function content_4() {
                const img = document.createElement("img");
                img.src = "https://picsum.photos/200/301";
                img.style.clear = "right";
                img.style.clear = "left";
                document.getElementById("content_content").appendChild(img);
            }

        </script>
    </body>
</html>
