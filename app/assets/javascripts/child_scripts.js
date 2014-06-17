$(document).ready(function() {

// append id name to reflect link or button type
  $("#add-child").on("click", function(e){
  	e.preventDefault();
  	$("#new-child").removeClass("hidden").addClass("block");
  });

  $("#new-child").on("submit", function(e){
    e.preventDefault();
    console.log("clicked add child button");
    var $newChildNickname = $('#new-child input[name="nickname"]');
    var $newChildFacebook = $('#new-child input[name="facebook_username"]');
    console.log($newChildNickname.val());
    console.log($newChildFacebook.val());
    var newChild = ({
      nickname: $newChildNickname.val(),
      facebook_username: $newChildFacebook.val()
    });
    console.log(newChild);

// debugger;
    $.ajax({
      url: window.location.pathname +"/children",
      type: "POST",
      dataType: "json",
      data: newChild,
      beforeSend: function(xhr) {xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))}
    }).done(function(data){
      console.log(data);
    });
  });

});