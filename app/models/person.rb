class Person < ActiveRecord::Base
	
	## ATTRIBUTES

		### HEADSHOT
			has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
			validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/



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

		# THIS FUNCTIONALITY SHOULD BE MOVED TO CHILD WHEN WE HAVE A CHILD

		def all_callendar_entries
			self.calendar_entries
		end

		def childcares					#FIX
			#right now this returns everthing, eventually it should filter.
			self.calendar_entries
		end

		def appointments				#FIX
			#right now this returns everthing, eventually it should filter.
			self.calendar_entries
		end

		def happenings					#FIX
			#right now this returns everthing, eventually it should filter.
			self.calendar_entries
		end





	## HELPERS

		## this might work better as a 'before save' hook
		def self.convert_facebook_name_to_url(facebook_username_input)
			facebook_headshot_url = "http://graph.facebook.com/#{facebook_username_input}/picture"
			return facebook_headshot_url
		end



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