# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Family.delete_all

Person.delete_all
	Child.delete_all
	Caregiver.delete_all
	User.delete_all


randalls = Family.new({
	nickname: "Randalls"
	})
randalls.save

# PEOPLE
john = randalls.users.build({
	nickname: "Dad",
	first_name: "John",
	last_name: "Randall",
	headshot_used: nil,
	uploaded_headshot_url: nil,
    facebook_username: 'johnrandall',
    notes_on_availability: "Never available. Always at GA WDI.",
    description: "Bearded."
	})
john.save

# ## USER SEED
# dad = randalls.users.build({
# 	nickname: "Dad",
# 	first_name: "John",
# 	last_name: "Randall",
# 	uploaded_headshot_url: nil,
#     facebook_username: 'johnrandall',
#     notes_on_availability: "Never available. Always at GA WDI.",
#     description: "Bearded."
# 	})
# dad.save

# mom = randalls.users.build({
# 	nickname: "Mom",
# 	first_name: "Karina",
# 	last_name: "Linch",
# 	uploaded_headshot_url: nil,
#     facebook_username: 'mslinch',
#     notes_on_availability: "Works from home Tuesd and Thurs (with support). Available Friday.",
#     description: 'mama is the best.'
# 	})
# mom.save


# ## CAREGIVER
# grandma = randalls.caregivers.build({
# 	nickname: "Grandma Janet",
# 	first_name: "Janet",
# 	last_name: "Randall",
# 	uploaded_headshot_url: nil,
#     facebook_username: 'janetrandall',
#     notes_on_availability: "Avail Wed, Monday mornings, Thrusdays",
#     description: "sweet lady."
# 	})
# grandma.save

# natt = randalls.caregivers.build({
# 	nickname: "Natt",
# 	first_name: "Piyapath",
# 	last_name: "Longhamphia",
# 	uploaded_headshot_url: nil,
#     facebook_username: 'Natt.Piyapath',
#     notes_on_availability: "target of 28 hours per week",
#     description: "nanny"
# 	})
# natt.save


# ## CHILD
# max = randalls.children.build({
# 	nickname: "MisterMax",
# 	first_name: "Max",
# 	last_name: "Randall",
# 	uploaded_headshot_url: nil,
#     facebook_username: 'maxrandall',
#     notes_on_availability: "always availble all the time",
#     description: "gobbler of mac'n'cheese"
# 	})
# max.save

# sam = randalls.children.build({
# 	nickname: "SammyDoo",
# 	first_name: "Sam",
# 	last_name: "Randall",
# 	uploaded_headshot_url: nil,
#     facebook_username: 'samrandall',
#     notes_on_availability: "ready to party at 3AM",
#     description: "the drooler"
# 	})
# sam.save
