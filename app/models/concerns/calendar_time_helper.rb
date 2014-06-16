module CalendarTimeHelper
	def self.hello
		return "hello (from CalendarTimeHelper)"
	end

	# def self.pos_percentage_from_time(input_hash)
	# 	container_start_time = input_hash[container_start_time]
	# 	container_end_time = input_hash[container_end_time]
	# 	entry_time = input_hash[entry_time]

	# 	container_start_time_in_seconds = seconds_since_epoch_time(container_start_time)
	# 	container_end_time_in_seconds = seconds_since_epoch_time(container_end_time)
	# 	entry_val_in_seconds = seconds_since_epoch_time(entry_time)

	# 	length_of_container_in_seconds = container_end_time_in_seconds - container_start_time_in_seconds #100%
	# 	entry_val_in_seconds_normalized = entry_val_in_seconds_normalized - container_start_time_in_seconds #?%

	# 	position_percentage = entry_val_normalized / length_of_container_in_seconds

	# 	return position_percentage
	# end


		# def self.seconds_since_epoch_time(time_obj)
		# 	seconds_since_epoch_time = time_obj.round.to_f
		# 	return seconds_since_epoch_time
		# end

	def self.pos_percentage_from_time(input_hash)
		# container_start_time = input_hash[container_start_time].seconds_since_midnight
		container_start_time = 0
	 	container_end_time = 86400
	 	entry_time = Time.now.seconds_since_midnight

	 	length_of_container_in_seconds = container_end_time - container_start_time 

	 	position_percentage = (entry_time / length_of_container_in_seconds * 100).round

	 	return position_percentage
	 end
end