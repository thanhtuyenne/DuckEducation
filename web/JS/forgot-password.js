
// When the user clicks the button, open the modal 
function show(show_modal) {
    if (show_modal) {
        alert("show modal");
        var modal = document.getElementById("myModal2");
        modal.style.display = "block";
    }
}
function show3(show_modal) {
    if (show_modal) {
        var modal = document.getElementById("myModal3");
        modal.style.display = "block";
    }
}
// When the user clicks on <span> (x), close the modal
function hide() {
    var span = document.getElementsByClassName("close")[0];
    var modal = document.getElementById("myModal2");

    modal.style.display = "none";
}
function hide3() {
    var span = document.getElementsByClassName("close")[0];
    var modal = document.getElementById("myModal3");

    modal.style.display = "none";
}
// When the user clicks anywhere outside of the modal, close it
window.onclick = function (event) {
    var modal = document.getElementById("myModal2");
    if (event.target == modal) {
        modal.style.display = "none";
    }
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function (event) {
    var modal = document.getElementById("myModal3");
    if (event.target == modal) {
        modal.style.display = "none";
    }
}

//
//// When the user clicks the button, open the modal 
//function show(show_modal,id) {
//    console.log(id);
//    if (show_modal) {
//        if (id != null) {
//            document.write(id);
//            var modal = document.getElementById();
//            modal.style.display = "block";
//        }
//
//    }
//}
//// When the user clicks on <span> (x), close the modal
//function hide(id) {
//    var span = document.getElementsByClassName("close")[0];
//    var modal = document.getElementById(id);
//
//    modal.style.display = "none";
//}
//// When the user clicks anywhere outside of the modal, close it
//window.onclick = function close(event, id) {
//    if (id != null) {
//        var modal = document.getElementById(id);
//        if (event.target == modal) {
//            modal.style.display = "none";
//        }
//    }
//
//}