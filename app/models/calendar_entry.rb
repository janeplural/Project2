class CalendarEntry < ActiveRecord::Base

	## TRAVERSING THE DATA

		has_many :participations
			has_many :persons, through: :participations
				has_many :children, through: :participations
				has_many :caregivers, through: :participations
				has_many :users, through: :participations

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
				# def all_persons
				# 	persons
				# end

				# def caregivers		#FIX
				# 	#right now this returns everthing, eventually it should filter.
				# 	persons.where(type: 'Caregiver')
				# end

				# def children		#FIX
				# 	#right now this returns everthing, eventually it should filter.
				# 	persons.where(type: 'Child')
				# end

				# def users
				# 	persons.where(type: 'User')
				# end




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
