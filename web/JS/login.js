
// When the user clicks the button, open the modal 
function show(show_modal) {
    if (show_modal) {
        var modal = document.getElementById("myModal");
        modal.style.display = "block";
    }
}
// When the user clicks on <span> (x), close the modal
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