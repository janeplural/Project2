class Person < ActiveRecord::Base
	

	## TRAVERSING THE DATA

		### FAMILY CONNECTION

		belongs_to :family

		has_many :participations
			has_many :calendar_entries, through: :participations
				has_many :appointments, through: :participations
				has_many :childcares, through: :participations
				has_many :happenings, through: :participations


	## CALENDAR ENTRIES

		### Getters

		### dynamic call
		# def calendar_entries_of_type(type)
		# 	if type == 'all' || type === nil
		# 		return all_callendar_entries()
		# 	else
		# 		return calendar_entries.where(type: type)
		# 	end
		# end

			# ### alternates
			# def all_callendar_entries
			# 	calendar_entries
			# end

			# def childcares
			# 	calendar_entries.where(type: 'Childcare')
			# end
			# 		# def childcare
			# 		# 	childcares
			# 		# end

			# def appointments
			# 	calendar_entries.where(type: 'Appointment')
			# end
			# 		# def appointment
			# 		# 	appointments
			# 		# end

			# def happenings
			# 	calendar_entries.where(type: 'Happening')
			# end
			# 		# def happening
			# 		# 	happenings
			# 		# end
		
		### Setters



end





# class Child < Person
# 	belongs_to :member, :polymorphic => true
# end



# class Caregiver < Person
# 	belongs_to :member, :polymorphic => true
# end



# class User < CareGiver
# 	belongs_to :member, :polymorphic => true
# end