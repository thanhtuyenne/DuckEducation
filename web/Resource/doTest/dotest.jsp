<%-- 
    Document   : dotest
    Created on : Oct 29, 2021, 8:50:15 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>TEST</title>
        <link rel="stylesheet" href="CSS/index.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    </head>
    <body>
        <form action="#" class="test-form">
            <h1 class="test-name">TEST NAME</h1>
            <p class="point">TOTAL POINTS</p>

            <div class="no-ques">
                <div class="question">
                    <p class="ques">
                        <b>Question 1:</b> Lorem ipsum dolor sit amet conse ctetur adip iscing elit Proin rhonc us urna dictum.
                    </p>
                    <p class="desc-ques">
                        Description: Lorem ipsum dolor sit amet conse ctetur adip iscing elit Proin rhonc us urna dictum.
                    </p>
                </div>

                <div class="answer">
                    <input type="text" placeholder="Answer.." class="input-ans" />
                </div>
            </div>

            <div class="no-ques">
                <div class="question">
                    <p class="ques">
                        <b>Question 2:</b> Lorem ipsum dolor sit amet conse ctetur adip iscing elit Proin rhonc us urna dictum.
                    </p>

                    <p class="desc-ques">
                        Description: Lorem ipsum dolor sit amet conse ctetur adip iscing elit Proin rhonc us urna dictum.
                    </p>
                </div>

                <div class="answer">
                    <input type="radio" name="rad" id="a_ans" value="a" />
                    <label for="a_ans">Lorem ipsum dolor sit amet conse ctetur adip iscing elit Proin
                        rhonc us urna dictum.</label
                    >
                    <br />
                    <input type="radio" name="rad" id="b_ans" value="b" />
                    <label for="b_ans"
                           >Lorem ipsum dolor sit amet conse ctetur adip iscing elit Proin
                        rhonc us urna dictum.</label
                    ><br />
                    <input type="radio" name="rad" id="c_ans" value="c" />
                    <label for="c_ans"
                           >Lorem ipsum dolor sit amet conse ctetur adip iscing elit Proin
                        rhonc us urna dictum.</label
                    ><br />
                    <input type="radio" name="rad" id="d_ans" value="d" />
                    <label for="d_ans"
                           >Lorem ipsum dolor sit amet conse ctetur adip iscing elit Proin
                        rhonc us urna dictum.</label
                    ><br />
                </div>
            </div>

            <div class="no-ques">
                <div class="question">
                    <p class="ques">
                        <b>Question 3:</b> Lorem ipsum dolor sit amet conse ctetur adip iscing
                        elit Proin rhonc us urna dictum.
                    </p>

                    <p class="desc-ques">
                        Description: Lorem ipsum dolor sit amet conse ctetur adip iscing
                        elit Proin rhonc us urna dictum.
                    </p>
                </div>

                <div class="answer">
                    <input type="checkbox" name="ans" id="ans1" />
                    <label for="ans1"
                           >Lorem ipsum dolor sit amet conse ctetur adip iscing elit Proin
                        rhonc us urna dictum.</label
                    ><br />
                    <input type="checkbox" name="ans" id="ans2" />
                    <label for="ans2"
                           >Lorem ipsum dolor sit amet conse ctetur adip iscing elit Proin
                        rhonc us urna dictum.</label
                    ><br />
                    <input type="checkbox" name="ans" id="ans3" />
                    <label for="ans3"
                           >Lorem ipsum dolor sit amet conse ctetur adip iscing elit Proin
                        rhonc us urna dictum.</label
                    ><br />
                    <input type="checkbox" name="ans" id="ans4" />
                    <label for="ans4"
                           >Lorem ipsum dolor sit amet conse ctetur adip iscing elit Proin
                        rhonc us urna dictum.</label
                    ><br />
                </div>
            </div>

        </div>
        <button type="submit" class="btn-test">SUBMIT</button>
    </form>


</body>
</html>
