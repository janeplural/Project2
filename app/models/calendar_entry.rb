class CalendarEntry < ActiveRecord::Base

	## TRAVERSING THE DATA

		has_many :participations
		has_many :persons, through: :participations





	## PERSONS STUFF

		def all_persons
			self.persons
		end

		def caregivers		#FIX
			#right now this returns everthing, eventually it should filter.
			self.persons
		end

		def children		#FIX
			#right now this returns everthing, eventually it should filter.
			self.persons
		end




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
