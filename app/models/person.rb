class Person < ActiveRecord::Base

	belongs_to :family

	has_many :participations
		has_many :calendar_entries, through: :participations
			has_many :appointments, through: :participations
			has_many :childcares, through: :participations
			has_many :happenings, through: :participations



	def headshot_image_url
		# return silloeutte if nothing else
		facebook_headshot_url
		# return image_tag("silloeutte.png")
	end

	def facebook_headshot_url
		facebook_username = self.facebook_username

		if !facebook_username
			return "NO IMAGE #FIX"
		end

		# facebook_profile_JSON = HTTParty.get("http://graph.facebook.com/#{facebook_username}")
		# facebook_profile_hash = JSON.parse(facebook_profile_JSON)

		facebook_picture_JSON = HTTParty.get("http://graph.facebook.com/#{facebook_username}?fields=picture")
		facebook_picture_hash = JSON.parse(facebook_picture_JSON)

		# ERROR VALIDATE HERE
		# if facebook_picture_hash["error"]

		facebook_headshot_is_silhouette = facebook_picture_hash['picture']['data']['is_silhouette']
		facebook_headshot_url = facebook_picture_hash['picture']['data']['url']

		if facebook_headshot_is_silhouette == true
			# return image_tag("silloeutte.png")
			return 'NO IMAGE # FIX'
		elsif facebook_headshot_is_silhouette == false
			return facebook_headshot_url
		end
	end

end



	# def headshot_image_url
	# 	if facebook_username_acceptable
	# 		return facebook_headshot_for(facebook_username)
	# 	else
	# 		return "http://www.clipartbest.com/cliparts/dir/La9/dirLa9ri9.jpeg"
	# 		return #FIX = OUR URLS SHOULD GO HERE
	# 	end
	# end

	# def facebook_username_acceptable
	# end

	# def facebook_headshot_for(facebook_username)
	# 	return "http://graph.facebook.com/#{facebook_username}?fields=picture"
	# end