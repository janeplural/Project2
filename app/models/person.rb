class Person < ActiveRecord::Base
	

	## TRAVERSING THE DATA

		### FAMILY CONNECTION

		belongs_to :family

		has_many :participations
		has_many :calendar_entries, through: :participations


		# belongs_to :member, :polymorphic => true

		# has_many :participant_events, as: :participant
		# has_many :events, through: :participant_events
			
			# has_many :childcares, :as => :participant, :class_name => "Childcare"

			# has_many :childcares, through: :participant_events, :as => :participant, :class_name => "Childcare"

			# has_many :activities, :as => :participant, :class_name => "Activity"
			# has_many :happenings, :as => :participant, :class_name => "Happening"


	## CALENDAR ENTRIES

		### Getters

		### dynamic call
		def calendar_entries_of_type(event_type)
			if event_type == 'all' || event_type == :all || event_type == nil
				return all_callendar_entries()
			else
				return self.calendar_entries.where(event_type: event_type.to_s.singularize.to_sym)
			end
		end

			### alternates
			def all_callendar_entries
				self.calendar_entries
			end

			def childcares
				self.calendar_entries.where(event_type: :childcare)
			end
					# def childcare
					# 	self.childcares
					# end

			def appointments
				self.calendar_entries.where(event_type: :appointment)
			end
					# def appointment
					# 	self.appointments
					# end

			def happenings
				self.calendar_entries.where(event_type: :happening)
			end
					# def happening
					# 	self.happenings
					# end
		
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