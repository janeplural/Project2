# require "colorize"

class FamiliesController < ApplicationController

	
	def index
		render html: "#FIX. This is Families#INDEX. The user should never see this. This route should be deleted when done. Try the show page at /families/ANYNUMBERHERE"
	end


	def new
	end

	def show
		# @slice_point = 'this is to help the payload builder alternate method. ignore it.'

		# @family = Family.find(current_user.family_id)   # NOT READY FOR PRIME TIME YET
		@family = Family.last

		@persons = @family.persons
		@children = @family.children
		@caregivers = @family.caregivers
			@luddites = @family.luddites
			@users = @family.users

		@payload = build_payload(); #20.times {puts ""}; ap @payload
		# render json: @payload

		@child = Child.new
	end


	def edit
	end




end
