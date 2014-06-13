class CalendarEntry < ActiveRecord::Base

	## TRAVERSING THE DATA FOR ASSOCIATIONS

		has_many :participations
		has_many :persons, through: :participations



	## TIME FILTERS
		scope :yesterday, lambda { |days| where('start_datetime < ?' , -1) }	#UNTESTED
		scope :today, lambda { |days| where('start_datetime < ?' , 0) }			#UNTESTED
		scope :tomorrow, lambda { |days| where('start_datetime < ?' , 1) }		#UNTESTED
			#Use scope like this: 
				# @yesterdays_events = @child.calendarentries.yesterday
				# @todays_events = @person.calendarentries.today
				# @tomorrows_events = @family.calendarentries.tomorrow






	## ASSOCIATED PERSONS 
		
		### Getters

			### dynamic call
				# def participants_of_type(role_type)
				# 		if role_type == 'all' || role_type == :all || role_type == nil
				# 			return allpersons()
				# 		elsif
				# 		end
				# end

			### simple calls
				def all_persons
					self.persons
				end

				def caregivers		#FIX
					#right now this returns everthing, eventually it should filter.
					self.persons.where(is_caregiver: true)
				end

				def children		#FIX
					#right now this returns everthing, eventually it should filter.
					self.persons.where(is_child: :true)
				end

				def users
					self.persons.where(is_user: :true)
				end




	## TIME GETTERS

		def starttime
			return start_datetime
		end

		def endtime
			return start_endtime
		end

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






end
