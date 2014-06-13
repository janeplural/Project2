# require "colorize"

class FamilyController < ApplicationController

	
	def index
		#FIX
		render html: "user should never see this. This route should be deleted when done. Try the show page at /family/id_num"
	end


	def new
	end

	def show
		@slice_point = 'this is to help the payload builder alternate method. ignore it.'

		# @family = Family.find(current_user.family_id)   # NOT READY FOR PRIME TIME YET
		@family = Family.last

		@persons = @family.persons
		@children = @family.children
		@caregivers = @family.caregivers
			@luddites = @family.luddites
			@users = @family.users

		@payload = build_payload(); #20.times {puts ""}; ap @payload
		render json: @payload
	end



	def edit
	end

	def build_payload
		payload_arr = []

		instance_variables_to_ignore = [
			#alternatly - we could slice this array at the slice point
				:@_action_has_layout,
				:@_routes,
				:@_headers,
				:@_status,
				:@_request,
				:@_response,
				:@_env,
				:@_prefixes,
				:@_lookup_context,
				:@_action_name,
				:@_response_body,
				:@marked_for_same_origin_verification,
				:@_config,
				:@slice_point]

		self.instance_variables.each do |instance_variable|
			if !instance_variables_to_ignore.include?(instance_variable)
				# ap instance_variable
				value = self.instance_variable_get(instance_variable)
				single_item_hash = {instance_variable => value}
				# ap single_item_hash
				payload_arr << single_item_hash
			end
		end
	
		return payload_arr

	end





end
