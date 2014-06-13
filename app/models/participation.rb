class Participation < ActiveRecord::Base

	belongs_to :person

	belongs_to :calendar_entry

end
