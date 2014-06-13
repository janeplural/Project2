class FamilyController < ApplicationController
  
  def index
  	#FIX
  	render html: "user should never see this. This route should be deleted when done. Try the show page at /family/id_num"
  end


  def new
  end

  def show
  	# @family = Family.find(current_user.family_id)
  	@family = Family.find(1)
  	# json_fam = @family.to_json
  	# binding.pry
  	# render json: JSON.pretty_generate(@family.to_json)
  	render json: @family
  end

  def edit
  end
end
