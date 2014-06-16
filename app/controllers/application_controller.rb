class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

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
