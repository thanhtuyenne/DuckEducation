<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <title>Message</title>
        <link rel="stylesheet" href="Resource/message/CSS/index.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/toolbar.css"/>
    </head>

    <body>
        <%@include file="../html/header-message.jsp" %>
        <div class="message-body">
            <div class="message-contener">
                <div class="message-side-bar">
                    <div class="header-message-side-bar">
                        <div class="header-message-side-bar-contener">
                            <span>
                                <h2>Message</h2>
                            </span>
                            <span>
                                <button type="button" class="button-38 btn btn-primary btn-lg" >New</button>

                            </span>
                        </div>
                    </div>
                    <div class="message-side-bar-contener">
                        <div class="card-message message-active" id="0">
                            <div class="avt">
                                <img src="https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50" />
                            </div>
                            <div class="title-message">
                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Explicabo error facilis maxime sed! Eos veritatis ut neque voluptatem dicta corrupti, optio, iusto nobis pariatur excepturi nihil distinctio harum impedit dolore!
                            </div>
                        </div>
                        <% for (int i = 1; i < 10; i++) {%>
                        <div class="card-message" id="<%=i%>">
                            <div class="avt">
                                <img src="https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50" />
                            </div>
                            <div class="title-message">
                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Explicabo error facilis maxime sed! Eos veritatis ut neque voluptatem dicta corrupti, optio, iusto nobis pariatur excepturi nihil distinctio harum impedit dolore!
                            </div>
                        </div>
                        <% }%>
                        <div style="color: #65676b; text-align: center">
                            No more message
                        </div>
                    </div>
                </div>
                <div class="message-panel">
                    <div class="chat-contener">
                        <nav>
                            <div class="p1">
                                <span>
                                    <nav>
                                        <img style="width: 50px"
                                             src="https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50" />
                                        <div>User 1</div>
                                    </nav>
                                </span>
                                <span>
                                    <div class="message">abc</div>
                                </span>
                            </div>
                        </nav>
                        <nav>
                            <div class="p2">
                                <span>
                                    <nav>
                                        <img style="width: 50px"
                                             src="https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50" />
                                        <div>User 1</div>
                                    </nav>
                                </span>
                                <span>
                                    <div class="message">abc</div>
                                </span>
                            </div>
                        </nav>
                        <nav>
                            <div class="p2">
                                <span>
                                    <nav>
                                        <img style="width: 50px"
                                             src="https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50" />
                                        <div>User 1</div>
                                    </nav>
                                </span>
                                <span>
                                    <div class="message">abc</div>
                                </span>
                            </div>
                        </nav>
                        <nav>
                            <div class="p1">
                                <span>
                                    <nav>
                                        <img style="width: 50px"
                                             src="https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50" />
                                        <div>User 1</div>
                                    </nav>
                                </span>
                                <span>
                                    <div class="message">
                                        Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                        Voluptatem iure molestias eveniet cumque laudantium autem
                                        enim rerum ex rem odio ab, deserunt, facilis mollitia
                                        repellat dolores totam asperiores fugit nulla. Lorem ipsum
                                        dolor sit amet consectetur adipisicing elit. Voluptatem iure
                                        molestias eveniet cumque laudantium autem enim rerum ex rem
                                        odio ab, deserunt, facilis mollitia repellat dolores totam
                                        asperiores fugit nulla. Lorem ipsum dolor sit amet
                                        consectetur adipisicing elit. Voluptatem iure molestias
                                        eveniet cumque laudantium autem enim rerum ex rem odio ab,
                                        deserunt, facilis mollitia repellat dolores totam asperiores
                                        fugit nulla.
                                    </div>
                                </span>
                            </div>
                        </nav>
                        <nav>
                            <div class="p1">
                                <span>
                                    <nav>
                                        <img style="width: 50px"
                                             src="https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50" />
                                        <div>User 1</div>
                                    </nav>
                                </span>
                                <span>
                                    <div class="message">
                                        this is short content
                                    </div>
                                </span>
                            </div>
                        </nav>
                        <div class="hook"></div>
                    </div>
                    <div class="second">
                        <form id="from_a" action="#" onsubmit="return sendMessage(this)">
                            <div id="div_from">
                                <textarea class="mess" name="" id="chat-message" cols="150" rows="auto" required></textarea>
                                <input class="sub_mess" type="submit" value="Send" />
                            </div>
                            <div id="div_dot">
                                <div class="dropup">
                                    <button class="dropbtn"><i class="fa fa-bars"></i></button>
                                    <div class="dropup-content">
                                        <div class="div_file">
                                            <label class="lab_file" for="img">Up Load Image</label>
                                            <input class="file_upload" type="file" id="img" name="img" accept="image/*" />
                                        </div>
                                        <div class="div_file">
                                            <label class="lab_file" for="audio">Up Load Audio</label>
                                            <input class="file_upload" type="file" id="audio" name="audio" accept="audio/*" />
                                        </div>
                                        <div class="div_file">
                                            <label class="lab_file" for="video">Up Load Video</label>
                                            <input class="file_upload" type="file" id="video" name="video" accept="video/*" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <script>
            $(document).ready(function () {
                $(".card-message").click(function () {
                    alert($(this).attr('id'));
                });
            });
            function message(params) {
                return '<nav> <div class="p2"> <span> <nav> <img style="width: 50px" src="https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50" /> <div>User 1</div> </nav> </span> <span> <div class="message">' + e + '</div> </span> </div> </nav>'
            }

            function openMessage(e) {
                $("div.card-message.message-active").toggleClass("message-active");
                $(e).toggleClass("message-active");
            }

            function isBlank(str) {
                return (!str || /^\s*$/.test(str));
            }

            function sendMessage(e) {
                var message = $("#chat-message").val();
                if (!isBlank(message))
                    $("div.hook").before('<nav> <div class="p2"> <span> <nav> <img style="width: 50px" src="https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50" /> <div>User 1</div> </nav> </span> <span> <div class="message">' + message + '</div> </span> </div> </nav>');
                $("#chat-message").val('');
                return false;
            }
            $(document).ready(function () {

            });
            $(".btn-upload").click(function () {
                $(".upload").show();
            });

        </script>
    </body>

</html>