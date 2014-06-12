class Family < ActiveRecord::Base
	
	# Across to all tables
		has_many :members, :class_name: "Person"
		has_many :event_participants, through: :members
		has_many :events, through: :event_participants

	# Down into nephew sub-classes
		has_many :children, :as => :personable, :class_name => "Child"
		has_many :caregivers, :as => :personable, :class_name => "Caregiver"
		has_many :users, :as => :personable, :class_name => "User"

		has_many :childcare_events, as => :eventable, :classname => "ChildcareEvent"
		has_many :activity_events, as => :eventable, :classname => "ActivityEvent"
		has_many :routine_events, as => :eventable, :classname => "RoutineEvent"

end
