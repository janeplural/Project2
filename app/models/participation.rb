class Participation < ActiveRecord::Base

	belongs_to :person
		belongs_to :child, foreign_key: "person_id"
		belongs_to :caregiver, foreign_key: "person_id"			
			belongs_to :user, foreign_key: "person_id"	
			belongs_to :luddite, foreign_key: "person_id"
		

	belongs_to :calendar_entry
		belongs_to :appointment, foreign_key: "calendar_entry_id"
		belongs_to :childcare, foreign_key: "calendar_entry_id"
		belongs_to :happening, foreign_key: "calendar_entry_id"

end
