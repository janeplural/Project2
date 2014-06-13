class Family < ActiveRecord::Base

	has_many :persons
		has_many :children
		has_many :caregivers, foreign_key: "family_id"
			has_many :users
			has_many :luddites

end
