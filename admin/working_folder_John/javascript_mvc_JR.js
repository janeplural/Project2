
// ************ Model *************
var Person = function(input_data_json){
	console.log("running Person");
	this.id = input_data_json["id"];
	this.name = input_data_json["name"];
	this.address = input_data_json["address"];
	this.email = input_data_json["email"];
	this.loyalty_code = input_data_json["loyalty_code"]

}







// ************ View *************
PersonView = function(model){
	// creates html bits from a model
	console.log("running PersonView");
	this.model = model; 
	// this.el = undefined; 
}

PersonView.prototype.render_self_as_li = function(){
	var newElement = $('<li>').html(this.model.name);
	// need to add other elements here, right?
	// this.el = newElement;
	return this
}



// ************ Collection *************
// function PeopleCollection(){
	// a group of individuals with a culture is a people
	// a group of individuals without any other context is persons
function PersonsCollection (){
	console.log("running PersonCollection");
	this.models = {};
}

PeopleCollection.prototype.add_person = function(personJSON){
	var newPerson = new Person(personJSON);
	this.models[personJSON.id] = newPerson;
	$(this).trigger('monkey');
}




// ****** Initialize JS Framework *****
$(function(){
	console.log("DOM loaded");
	addEventTriggers();
})

function addEventTriggers(){
	console.log("running addEventTriggers");

	$('.name-form').on('submit', function(event_from_submit){
		console.log(".name-form.click.on(submit) triggered (hopefully, default action prevented so this does nothing");
		event_from_submit.preventDefault();
	});
	
	$(".name-form").click(function(){
		console.log(".name-form.click triggered");
		console.log("storing form data in formData")
		var formData = {
			name: $('.name-form input[name="name"]').val(),
		}
		console.log("form data is:");
		console.log(formData);
		// person = new Person(formData)
		

		// peopleCollection.create({name: newNameInput.val()});
		// newNameInput.val('');


	});
	
}


x = new Person({name:'myname'})
