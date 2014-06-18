$(document).ready(function() {

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
    console.log($newChildNickname.val());
    var newChild = ({
      nickname: $newChildNickname.val()
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

  $("#new-caregiver").on("submit", function(e){
    e.preventDefault();
    console.log("clicked add caregiver button");
    var $newCaregiverNickname = $('#new-caregiver input[name="nickname"]');
    var $newCaregiverFirstName = $('#new-caregiver input[name="first_name"]');
    var $newCaregiverLastName = $('#new-caregiver input[name="last_name"]');
    var $newCaregiverEmail = $('#new-caregiver input[name="email"]');
    var $newCaregiverNotes = $('#new-caregiver input[name="notes_on_availability"]');
    var newCaregiver = ({
      nickname: $newCaregiverNickname.val(),
      first_name: $newCaregiverFirstName.val(),
      last_name: $newCaregiverLastName.val(),
      email: $newCaregiverEmail.val(),
      notes_on_availability: $newCaregiverNotes.val()
    });
    console.log(newCaregiver);
    $("#new-caregiver").removeClass("block").addClass("hidden");

    $.ajax({
      url:$(this).attr("action"),
      type: "POST",
      dataType: "json",
      data: newCaregiver
    }).done(function(data){
      console.log(data);
    });
  });





// edit photo form
// =====================
  $(".child-photo-dummy a").on("click", function(e){
    e.preventDefault();
    $("#edit-person").removeClass("hidden").addClass("block");
    console.log("clicked edit person");
    $("#new-child").removeClass("block").addClass("hidden");
    $("#new-caregiver").removeClass("block").addClass("hidden");
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

      url:$(this).attr("action"),
      type: "POST",
      dataType: "json",
      data: newPerson
    }).done(function(data){
      console.log(data);
    });
  });



});