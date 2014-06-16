
# SEED CONFIG IS AT THE BOTTOM



def delete_join_tables()
	Participation.delete_all
end 

def refresh_family()
	Family.delete_all
	$seed_family = Family.create({
		nickname: "$seed_family"
		})
end




def refresh_persons()

	Person.delete_all


	## USER

		$dad = $seed_family.persons.create({
			nickname: "Dad",
			first_name: "John",
			last_name: "Randall",
			uploaded_headshot_url: nil,
		    facebook_username: 'johnrandall',
		    notes_on_availability: "Never available. Always at GA WDI.",
		    description: "Bearded.",

		    type: "User"
			})


		$mom = $seed_family.persons.create({
			nickname: "Mom",
			first_name: "Karina",
			last_name: "Linch",
			uploaded_headshot_url: nil,
		    facebook_username: 'karinalinch',
		    notes_on_availability: "Works from home Tuesd and Thurs (with support). Available Friday.",
		    description: 'mama is the best.',

		    type: "User"

			})


	## CAREGIVER

		$grandma = $seed_family.persons.create({
			nickname: "Grandma Janet",
			first_name: "Janet",
			last_name: "Randall",
			uploaded_headshot_url: nil,
		    facebook_username: 'janetrandall',
		    notes_on_availability: "Avail Wed, Monday mornings, Thrusdays",
		    description: "sweet lady.",

		    type: "Luddite"

			})


		$natt = $seed_family.persons.create({
			nickname: "Natt",
			first_name: "Piyapath",
			last_name: "Longhamphia",
			uploaded_headshot_url: nil,
		    facebook_username: 'Natt.Piyapath',
		    notes_on_availability: "target of 28 hours per week",
		    description: "nanny",

		    type: "Luddite"
		})


	## CHILD

		$sam = $seed_family.persons.create({
			nickname: "SammyDoo",
			first_name: "Sam",
			last_name: "Randall",
			uploaded_headshot_url: nil,
		    facebook_username: nil,
		    notes_on_availability: "ready to party at 3AM",
		    description: "the drooler",

		    type: "Child"

			})

		$max = $seed_family.persons.create({
			nickname: "MisterMax",
			first_name: "Max",
			last_name: "Randall",
			uploaded_headshot_url: nil,
		    facebook_username: 'MaxwellRandall',
		    notes_on_availability: "always availble all the time",
		    description: "gobbler of mac'n'cheese",

		    type: "Child"
		    
			})

end




def refresh_calendar_entries()

	require 'time'

	CalendarEntry.delete_all

	## VIA CHILD
		## CHILDCARE

			$childcare1 = $max.calendar_entries.create({
				start_datetime: Time.parse('3am'),
				end_datetime: Time.parse('7:30am'),
				name: 'dad home',
				image_url: nil,
				family_id: nil,
				description: 'dad home - made via Max',
				type: 'Childcare'
				})

				$childcare1.participations.create({
					person_id: $dad.id
					})
	    	
			$childcare2 = $max.calendar_entries.create({
				start_datetime: Time.parse('8am'),
				end_datetime: Time.parse('4pm'),
				name: 'grandma watches me',
				image_url: nil,
				family_id: nil,
				description: 'grandma watches me',

				type: 'Childcare'
				
				})

				$childcare2.participations.create({
					person_id: $dad.id
					})

				$childcare2.participations.create({
					person_id: $grandma.id
					})




		## APPOINTMENTS

			$max.calendar_entries.create({
				start_datetime: Time.parse('8:45am'),
		    	end_datetime: Time.parse('12:30pm'),
		    	name: 'preschool',
		    	image_url: "http://www.sierrapreschool.com/Public/Images/homeSlide/children-learning-geography.jpg",
		    	family_id: nil,
		    	description: 'I get to see my friends at school',

		    	type: 'Appointment'

		    	})

			$max.calendar_entries.create({
				start_datetime: Time.parse('3pm'),
		    	end_datetime: Time.parse('3:45pm'),
		    	name: 'swim class',
		    	image_url: "http://www.lakejackson-tx.gov/images/pages/N242/swim%20lesson2.jpg",
		    	family_id: nil,
		    	description: 'I learn to swim',
		    	

				type: 'Appointment'

				})


		## HAPPENINGS

			$max.calendar_entries.create({
				start_datetime: Time.parse('8am'),
		    	end_datetime: Time.parse('8:30am'),
		    	name: 'breakfast',
		    	image_url: nil,
		    	family_id: nil,
		    	description: 'yum',

		    	type: 'Happening'
		    	})

			$max.calendar_entries.create({
				start_datetime: Time.parse('11:30am'),
		    	end_datetime: Time.parse('12:pm'),
		    	name: 'lunch at school',
		    	image_url: nil,
		    	family_id: nil,
		    	description: 'nom nom nom',

		    	type: 'Happening'

		    	})

			$max.calendar_entries.create({
				start_datetime: Time.parse('5pm'),
		    	end_datetime: Time.parse('5:30pm'),
		    	name: 'dinner at home',
		    	image_url: nil,
		    	family_id: nil,
		    	description: 'my favorite',

		    	type: 'Happening'
		    	})


	# ## VIA CAREGIVER
	# 	$dad.calendar_entries.create({
	# 	start_datetime: Time.parse('2am'),
	# 	end_datetime: Time.parse('8am'),
	# 	name: 'dad home',
	# 	image_url: nil,
	# 	family_id: nil,
	# 	description: 'dad home - made via dad',

	# 	type: 'Childcare'
		
	# 	})


end






## CONFIG

refresh_family()

delete_join_tables()

refresh_persons()
	# refresh_children()		#doesn't work yet
	# refresh_caregivers()		#doesn't work yet
	# refresh_users()			#doesn't work yet

refresh_calendar_entries()
	# refresh_childcares()		#doesn't work yet
	# refresh_appointments()		#doesn't work yet
	# refresh_happenings			#doesn't work yet
