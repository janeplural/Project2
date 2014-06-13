class Person < ActiveRecord::Base
	
	## ATTRIBUTES

		# ### HEADSHOT
		# 	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
		# 	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/



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

		### dynamic call
		def calendar_entries_of_type(event_type)
			if event_type == 'all' || event_type == :all || event_type == nil
				return self.calendar_entries
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




	## HELPERS

		## #OPTIMIZE this might work better as a 'before save' or 'before validation' hook
		def self.convert_facebook_name_to_url(facebook_username_input)
			facebook_headshot_url = "http://graph.facebook.com/#{facebook_username_input}/picture"
			return facebook_headshot_url
		end



	## METHODS FOR SPECIFIC PERSON SUB-CLASSES
		# ABOUT THIS SECTION: Right now all of our people are of the same class (Person)
		# and of the same ActiveRecord table, (persons). Eventually
		# These should be split into seperate clasees (Single Table Inheritence), 
		# seperate tables (basic inheritance), and perhaps use polymoriphism so 
		# that hey can all respond to the same messages. Right now, they are all
		# just people. 



		# Methods for 'user'



		# Methods for 'child'



		# Methods for 'caregiver'


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