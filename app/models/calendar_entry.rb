class CalendarEntry < ActiveRecord::Base

	has_many :participations
	has_many :persons, through: :participations
end
