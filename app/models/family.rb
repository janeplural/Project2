class Family < ActiveRecord::Base

	has_many :children
	has_many :caregivers
	has_many :users
	
	# FIX THESE AREN'T WORKING - UNABLE TO CALL ALL FAMILY MEMBERS
	# has_many :people, :as => :member
	# has_many :members, :as => :member, :class_name => "Person"	#synonym of people

	# 	has_many :children, :as => :member, :class_name => "Child"
	# 	has_many :caregivers, :as => :member, :class_name => "Caregiver"
	# 	has_many :users, :as => :member, :class_name => "User"
	
	# has_many :event_participants, through: :people
	# has_many :event_participants, through: :members

	# has_many :events, through: :event_participants
	# 	has_many :childcare_events, :as => :eventable, :class_name => "ChildcareEvent"
	# 	has_many :activity_events, :as => :eventable, :class_name => "ActivityEvent"
	# 	has_many :routine_events, :as => :eventable, :class_name => "RoutineEvent"

	# def self.members
	# 	members_hash = {
	# 		children: self.children,
	# 		caregivers: self.caregivers,
	# 		users: self.users
	# 	}
	# 	return members_hash
	# end

end
