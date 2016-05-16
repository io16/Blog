//$(document).ready(function() {
//    $("#DeleteButton").click(createUser)
//});

function DeletePost(id) {
    //var firstName = $("#firstName").val();
    //var lastName = $("#lastName").val();
    //var email = $("#email").val();
    //var firstName = document.getElemtentById("fistname").value;
    $.post("/deletePost", {
            //fName: firstName,
            //lName: lastName,
            //e: email
            id: id
        }
        , function(data) {
            //var json = JSON.parse(data);

            window.location.reload();
            //  alert(data);
            //  $("#acontent").html(data);
        }
    )
}
