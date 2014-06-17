class ChildrenController < ApplicationController
  


  def show
    # @child = Child.find(current_user.family_id)   # NOT READY FOR PRIME TIME YET
    @child = Child.last
    
    @family = @child.family

    @calendar_entries = @child.calendar_entries
    @childcares = @child.childcares
    @appointments = @child.appointments
    @happenings = @child.happenings

    # @childcares_details = {}
      # @chilcares.each do |childcare|
    # end

    # @payload = build_payload(); #20.times {puts ""}; ap @payload


    respond_to do |format|
      format.html
      # format.json { render json: @payload }
    end

    # render json: @payload

  end


  # def create


  #   respond_to do |format|

  #     if params["facebook_username"]
  #       Child.create({
  #         :nickname => params["nickname"],
  #         :facebook_username => params["facebook_username"]
  #         })
  #     else
  #       Child.create({
  #         :nickname => params["nickname"]
  #       })
  #     end
  #   end
  # end

  def create
    @child = Child.create(nickname: params[:nickname], facebook_username: params[:facebook_username])

    render json: @child
  end




  private

  # def child_params
  #     params.require(:nickname).permit(:first_name, :last_name, :day_start_time, :day_end_time, :headshot_type, :facebook_username, :paperclip_headshot_url, :other_headshot_url)
  # end
#  family_edit

end






# before_action :set_child, only: [:show, :edit, :update, :destroy]

  # GET /children
  # GET /children.json
  # def index
    # @children = Child.all
  # end

  # GET /children/1
  # GET /children/1.json



  # GET /children/new
  # def new
  #   @child = Child.new
  # end

  # # GET /children/1/edit
  # def edit
  # end

  # # POST /children
  # # POST /children.json
  # def create
  #   @child = Child.new(child_params)

  #   respond_to do |format|
  #     if @child.save
  #       format.html { redirect_to @child, notice: 'Child was successfully created.' }
  #       format.json { render :show, status: :created, location: @child }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @child.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # PATCH/PUT /children/1
  # # PATCH/PUT /children/1.json
  # def update
  #   respond_to do |format|
  #     if @child.update(child_params)
  #       format.html { redirect_to @child, notice: 'Child was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @child }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @child.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /children/1
  # # DELETE /children/1.json
  # def destroy
  #   @child.destroy
  #   respond_to do |format|
  #     format.html { redirect_to children_url, notice: 'Child was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  # private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_child
  #     @child = Child.find(params[:id])
  #   end

  #   # Never trust parameters from the scary internet, only allow the white list through.
  #   def child_params
  #     params.require(:child).permit(:index)
  #   end

