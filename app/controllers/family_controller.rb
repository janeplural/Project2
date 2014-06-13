class FamilyController < ApplicationController
	
	def index
		#FIX
		render html: "user should never see this. This route should be deleted when done. Try the show page at /family/id_num"
	end


	def new
	end

	def show
		# @family = Family.find(current_user.family_id)
		# payload = {}

		@slice_point = 'CUT ME HERE'

		@family = Family.last

		@persons = @family.persons
		@children = @family.children
		@caregivers = @family.caregivers
			@luddites = @family.luddites
			@users = @family.users

		# @calendar_entries = @family.calendar_entries
			# @appointments = @family.appointments
			# @childcares = @family.childcares
			# @happenings = @family.happenings

		# build_payload
		#   @persons = @family.persons
		#   @children = @family.children
		#   @caregivers = @family.caregivers
		#     @luddites = @family.luddites
		#     @users = @family.users

		#   @calendar_entries = @family.calendar_entries
		#     @appointments = @family.appointments
		#     @childcares = @family.childcares
		#     @happenings = @family.happenings

		@payload = build_payload()
		# puts ""
		# puts ""
		# puts ""
		# puts ""
		# pp @payload
		# pp JSON.parse(@payload)
		

		render json: 'see terminal'

	end



	def edit
	end



	def build_payload
		payload_arr = []

		self.instance_variables.each do |instance_variable|
			single_item_hash = {instance_variable: self.instance_variable_get(instance_variable)}
			payload_arr << single_item_hash
		end

		slice_point_index = payload_arr.find_index(@slice_point)
		pp slice_point_index
		
		payload_arr.slice!(0, slice_point_index)

		pp payload_arr






		# payload = {}

		# self.instance_variables.each do |instance_variable|
		# 	# puts instance_variable
		# 	# puts instance_variable.to_s
		# 	payload[instance_variable]= self.instance_variable_get(instance_variable)
		# 	# pp self.instance_variable_get(instance_variable)

		# end

		return payload
	
	end
# 
	# def instance_variables_hash
			# @payload = Hash[instance_variables.map { |name| [name, instance_variable_get(name)] } ]
	# end


end
