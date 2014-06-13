class Person < ActiveRecord::Base
	

	#FAMILY CONNECTION

	belongs_to :family


	# belongs_to :member, :polymorphic => true

	# has_many :participant_events, as: :participant
	# has_many :events, through: :participant_events
		
		# has_many :childcares, :as => :participant, :class_name => "Childcare"

		# has_many :childcares, through: :participant_events, :as => :participant, :class_name => "Childcare"

		# has_many :activities, :as => :participant, :class_name => "Activity"
		# has_many :happenings, :as => :participant, :class_name => "Happening"




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