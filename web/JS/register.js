/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


var rgGmail = /^[a-zA-Z]{1,}(\w){0,}@\w{2,}(\.[a-z]{2,}){1,}$/;
var rgUsername = /^[a-zA-Z]{1,}[a-zA-Z0-9]{4,}$/;
var rgPassword = /^[a-zA-Z0-9][a-zA-Z0-9.,!@#$%^&*()_+]{5,}$/;
var rgName = /^[a-zA-Z]{1,}[a-zA-Z\s]*$/;
var rgAddress = /^[A-Za-z0-9'\.\-\s\,]{4,}$/;
var rgDob = /^(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|1[012])[\/\-]\d{4}$/;


$(document).ready(function () {
    $("#address").focusout(function () {
        if (validaddress()) {
            $("#address").css("border", "2px solid green");
            $("#errAddress").hide();
        } else {
            $("#errAddress").show();
        }
    });

    $("#firstname").focusout(function () {
        if (validfirstname()) {
            $("#firstname").css("border", "2px solid green");
            $("#errFirstname").hide();

        } else {
            $("#errFirstname").show();
        }
    });

    $("#lastname").focusout(function () {
        if (validlastname()) {
            $("#lastname").css("border", "2px solid green");
            $("#errLastname").hide();

        } else {
            $("#errLastname").show();
        }
    });

    $("#username").focusout(function () {
        if (validusername()) {
            $("#username").css("border", "2px solid green");
            $("#errUsername").hide();

        } else {
            $("#errUsername").show();
        }
    });

    $("#password").focusout(function () {
        if (validPassword()) {
            $("#password").css("border", "2px solid green");
            $("#errPassword").hide();

        } else {
            $("#errPassword").show();
        }
    });

    $("#confirm-password").focusout(function () {
        if (validconfpass()) {
            $("#confirm-password").css("border", "2px solid green");
            $("#errConfpass").hide();
        } else {
            $("#errConfpass").show();
        }
    });

    $("#gmail").focusout(function () {
        if (validemail()) {
            $("#gmail").css("border", "2px solid green");
            $("#errEmail").hide();

        } else {
            $("#errEmail").show();
        }
    });

});
$("#dob").focusout(function () {
    if (validdob()) {
        $("#dob").css("border", "2px solid green");
        $("#errDob").hide();

    } else {
        $("#errDob").show();
    }
});
function validdob() {
    var dob = $("#dob").val();
    if (rgDob.test(dob)) {
        return true;
    } else {
        return false;
    }
}
function validfirstname() {
    var firstname = $("#firstname").val();
    if (rgName.test(firstname)) {
        return true;
    } else {
        return false;
    }
}
function validlastname() {
    var lastname = $("#lastname").val();
    if (rgName.test(lastname)) {
        return true;
    } else {
        return false;
    }
}
function validusername() {
    var username = $("#username").val();
    if (rgUsername.test(username)) {
        return true;
    } else {
        return false;
    }
}
function validPassword() {
    var password = $("#password").val();
    if (rgPassword.test(password)) {
        return true;
    } else {
        return false;
    }
}

function validconfpass() {
    var password = $("#password").val();
    var confirm_password = $("#confirm-password").val();
    if (confirm_password === password && confirm_password !== "") {
        return true;
    } else {
        return false;
    }
}

function validemail() {
    var gmail = $("#gmail").val();
    if (rgGmail.test(gmail) && gmail !== "") {
        return true;
    } else {
        return false;
    }
}
function validaddress() {
    var address = $("#address").val();
    if (rgAddress.test(address) && address !== "") {
        return true;
    } else {
        return false;
    }
}
function checkAllData() {
    if (validfirstname() && validlastname() && validusername() && validPassword()
            && validconfpass() && validemail() & validdate()) {
        $("#myModal").hide();
        return true;
    } else {
        $("#myModal p").text("finish form before summit!");
        $("#myModal").show();
        return false;
    }
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

