$(document).ready(function() {


    var $childrenList = $("#list-children");

    $("#add-child").click(function() {
        var child = {
          name: $("#new-child-name").val()
        };

        var userTemplate = _.template($("#childTemplate").text());

        var $childList = $("#childList");
        $childList.append(userTemplate);

        // $.ajax({
        //     url: "/families/"+id,
        //     type: "POST",
        //     dataType: "json",
        //     data: user
        // }).done(function(data) {
        //     if (data.message == "FAILURE") {
        //         alert("OH NO, FAILURE! Removing element now.");
        //         $userList.children().last().remove();
        //     }
        // });
    });

    $("#add-child").on("click", function(e){
    	e.preventDefault();
    	$("#new_child").removeClass("hidden").addClass("block");
    });

});