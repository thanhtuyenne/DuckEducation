function sendRedirect(obj) {
    //$(obj).val()
    var value = $(obj).attr('value');
    var form = $('<form></form>');
    form.attr("method", "get");
    form.attr("action", "control");
    var field = $('<input></input>');
    field.attr("name", "button-control");
    field.attr("value", value);
    form.append(field);
    $(document.body).append(form);
    form.submit();
}