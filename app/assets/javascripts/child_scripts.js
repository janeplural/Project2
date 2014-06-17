$(document).ready(function() {

// $("new-child").addClass("hidden");

// New Child Form ========================
// append id name to reflect link or button type
  $("#add-child").on("click", function(e){
  	e.preventDefault();
  	$("#new-child").removeClass("hidden").addClass("block");
    console.log("clicked add child link");
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
    $("#new-child").removeClass("block").addClass("hidden");

    $.ajax({

      // url: window.location.pathname +"/children",
      url:$(this).attr("action"),
      type: "POST",
      dataType: "json",
      data: newChild
      // beforeSend: function(xhr) {xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))}
    }).done(function(data){
      console.log(data);
    });
  });

// New Caregiver Form =======================
// append id name to reflect link or button type
  $("#add-caregiver a").on("click", function(e){
    e.preventDefault();
    $("#new-caregiver").removeClass("hidden").addClass("block");
    console.log("clicked add caregiver button");
  });

// edit photo form
// =====================
  $(".child-photo-dummy a").on("click", function(e){
    e.preventDefault();
    $("#edit-person").removeClass("hidden").addClass("block");
    console.log("clicked edit person");
    $("#new-child").removeClass("block").addClass("hidden");
  });

  $("#edit-person").on("submit", function(e){
    e.preventDefault();
    console.log("clicked edit photo button");
    var $editPersonNickname = $('#edit-person input[name="nickname"]');
    var $editPersonFacebookUsername = $('#edit-person input[name="facebook_username"]');
    var $editPersonPaperclip = $('#edit-person input[name="PAPERCLIP_PLACEHOLDER"]');
    console.log($editPersonNickname.val());
    console.log($editPersonFacebookUsername.val());
    console.log($editPersonPaperclip.val());
    var newPerson = ({
      nickname: $editPersonNickname.val(),
      facebook_username: $editPersonFacebookUsername.val(),
      PAPERCLIP_PLACEHOLDER: $editPersonPaperclip.val()
    });
    console.log(newPerson);
    $("#edit-person").removeClass("block").addClass("hidden");

    $.ajax({

    //   url:$(this).attr("action"),
    //   type: "POST",
    //   dataType: "json",
    //   data: newPerson
    //   // beforeSend: function(xhr) {xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))}
    // }).done(function(data){
    //   console.log(data);
    });
  });



});