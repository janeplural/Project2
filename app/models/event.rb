class Event < ActiveRecord::Base
	# Across to all tables
		has_many :event_participants
		has_many :people, through: :event_participants
		has_one :family, through: :people						#FIX: IS THIS RIGHT?

	# Down into newphew sub-classes
		has_many :children, :as => :personable, :class_name => "Child"
		has_many :caregivers, :as => :personable, :class_name => "Caregiver"
		has_many :users, :as => :personable, :class_name => "User"
end



class ChildcareEvent < Event
end



class ActivityEvent < Event
end



class RoutineEvent < Event
end