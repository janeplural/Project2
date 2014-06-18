class CaregiversController < ApplicationController


	#There is no person.new. Person is never created. Only subclasses.


	def create

		# This isn't really editing the person, it's just editing the photo fields. 
		# They evntually might be refactored into a seperate model or something.

		@caregiver = Caregiver.create(nickname: params[:nickname], 
								first_name: params[:first_name], 
								last_name: params[:last_name], 
								email: params[:email],
								notes_on_availability: params[:notes_on_availability]
								)
		render json: @caregiver

	end



end