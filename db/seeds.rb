
# SEED CONFIG IS AT THE BOTTOM





def refresh_family()
	Family.delete_all
	$seed_family = Family.create({
		nickname: "$seed_family"
		})
end




def refresh_persons()

	Person.delete_all


	## USER

		dad = $seed_family.persons.create({
			nickname: "Dad",
			first_name: "John",
			last_name: "Randall",
			uploaded_headshot_url: nil,
		    facebook_username: 'johnrandall',
		    notes_on_availability: "Never available. Always at GA WDI.",
		    description: "Bearded."
			})


		mom = $seed_family.persons.create({
			nickname: "Mom",
			first_name: "Karina",
			last_name: "Linch",
			uploaded_headshot_url: nil,
		    facebook_username: 'mslinch',
		    notes_on_availability: "Works from home Tuesd and Thurs (with support). Available Friday.",
		    description: 'mama is the best.'
			})


	## CAREGIVER

		grandma = $seed_family.persons.create({
			nickname: "Grandma Janet",
			first_name: "Janet",
			last_name: "Randall",
			uploaded_headshot_url: nil,
		    facebook_username: 'janetrandall',
		    notes_on_availability: "Avail Wed, Monday mornings, Thrusdays",
		    description: "sweet lady."
			})


		natt = $seed_family.persons.create({
			nickname: "Natt",
			first_name: "Piyapath",
			last_name: "Longhamphia",
			uploaded_headshot_url: nil,
		    facebook_username: 'Natt.Piyapath',
		    notes_on_availability: "target of 28 hours per week",
		    description: "nanny"
		})


	## CHILD

		sam = $seed_family.persons.create({
			nickname: "SammyDoo",
			first_name: "Sam",
			last_name: "Randall",
			uploaded_headshot_url: nil,
		    facebook_username: 'samrandall',
		    notes_on_availability: "ready to party at 3AM",
		    description: "the drooler"
			})

		$max = $seed_family.persons.create({
			nickname: "MisterMax",
			first_name: "Max",
			last_name: "Randall",
			uploaded_headshot_url: nil,
		    facebook_username: 'maxrandall',
		    notes_on_availability: "always availble all the time",
		    description: "gobbler of mac'n'cheese"
			})

end




def refresh_calendar_entries()

	require 'time'

	## CHILDCARE

		$max.calendar_entries.create({
			start_datetime: Time.parse('3am'),
			end_datetime: Time.parse('7:30am'),
			name: 'dad home',
			image_url: nil,
			family_id: nil,
			desription: 'dad home',
			
			})
    	
		$max.calendar_entries.create({
			start_datetime: Time.parse('8am'),
			end_datetime: Time.parse('4pm'),
			name: 'grandma watches me',
			image_url: nil,
			family_id: nil,
			desription: 'grandma watches me',
			
			})


	## APPOINTMENTS

		$max.calendar_entries.create({
			start_datetime: Time.parse('8:45am'),
	    	end_datetime: Time.parse('12:30pm'),
	    	name: 'preschool',
	    	image_url: nil,
	    	family_id: nil,
	    	desription: 'I get to see my friends at school',
	    	})

		$max.calendar_entries.create({
			start_datetime: Time.parse('3pm'),
	    	end_datetime: Time.parse('3:45pm'),
	    	name: 'swim class',
	    	image_url: nil,
	    	family_id: nil,
	    	desription: 'I learn to swim',
	    	})


	## HAPPENINGS

		$max.calendar_entries.create({
			start_datetime: Time.parse('8am'),
	    	end_datetime: Time.parse('8:30am'),
	    	name: 'breakfast',
	    	image_url: nil,
	    	family_id: nil,
	    	desription: 'yum',
	    	})

		$max.calendar_entries.create({
			start_datetime: Time.parse('11:30am'),
	    	end_datetime: Time.parse('12:pm'),
	    	name: 'lunch at school',
	    	image_url: nil,
	    	family_id: nil,
	    	desription: 'nom nom nom',
	    	})

		$max.calendar_entries.create({
			start_datetime: Time.parse('5pm'),
	    	end_datetime: Time.parse('5:30pm'),
	    	name: 'dinner at home',
	    	image_url: nil,
	    	family_id: nil,
	    	desription: 'my favorite',
	    	})


end






## CONFIG

refresh_family()

refresh_persons()
	# refresh_children()		#doesn't work yet
	# refresh_caregivers()		#doesn't work yet
	# refresh_users()			#doesn't work yet

refresh_calendar_entries()
	# refresh_childcares()		#doesn't work yet
	# refresh_appointments()		#doesn't work yet
	# refresh_happenings			#doesn't work yet
