# == Schema Information
#
# Table name: families
#
#  id         :integer          not null, primary key
#  nickname   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Family < ActiveRecord::Base

	has_many :persons
		has_many :children
		has_many :caregivers, foreign_key: "family_id"
			has_many :users
			has_many :luddites

end
