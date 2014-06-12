class Person < ActiveRecord::Base

	# Across to all tables
		belongs_to :family
		has_many :event_participants
		has_many :events, through: :event_participants

	# Down into nephew sub-classes
		has_many :childcare_events, as => :eventable, :classname => "ChildcareEvent"
		has_many :activity_events, as => :eventable, :classname => "ActivityEvent"
		has_many :routine_events, as => :eventable, :classname => "RoutineEvent"

end


class Child < Person
end



class CareGiver < Person
end



class User < CareGiver
end