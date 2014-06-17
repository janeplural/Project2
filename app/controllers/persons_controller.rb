class PersonsController < ApplicationController


	#There is no person.new. Person is never created. Only subclasses.


	def edit

		# This isn't really editing the person, it's just editing the photo fields. 
		# They evntually might be refactored into a seperate model or something.

		@person = Person.update(nickname: params[:nickname], 
								facebook_username: params[:facebook_username], 
								linkedin_username: params[:linkedin_username], 
								paperclip_headshot_url: params[:paperclip_headshot_url:],
								other_headshot_url: params[:other_headshot_url]
								)
		render json: @person

	end



end