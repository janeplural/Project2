# == Schema Information
#
# Table name: calendar_entries
#
#  id             :integer          not null, primary key
#  type           :string(255)
#  family_id      :integer
#  start_datetime :datetime
#  end_datetime   :datetime
#  name           :string(255)
#  desription     :text
#  image_url      :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#

class CalendarEntry < ActiveRecord::Base

	## TRAVERSING THE DATA

		has_many :participations
			has_many :persons, through: :participations
				has_many :children, through: :participations
				has_many :caregivers, through: :participations
					has_many :users, through: :participations
					has_many :luddites, through: :participations

	
	## TIME STUFF

		def length(metric = 'minutes')
			if metric == 'seconds' || metric == 'sec' || metric == 's' || metric == :seconds || metric == :sec || metric == :s
				return (end_datetime - start_datetime)
			elsif metric == 'minutes' || metric == 'min' || metric == 'm' || metric == :minutes || metric == :min || metric == :m
				return (end_datetime - start_datetime)/60
			elsif metric == 'hours' || metric == 'hour' || metric == 'h' || metric == :hours || metric == :hour || metric == :h
				return (end_datetime - start_datetime)/60/60
			else
				return "USE HOURS, MINUTES, OR SECONDS"   #FIX - this should be an error message
			end
		end

		def starttime
			return start_datetime
		end

		def endtime
			return start_endtime
		end




end
