class AvengersController < ApplicationController
  # before_action :set_avenger, only: [:show, :edit, :update, :destroy]

  def index
    # render json: Avenger.all
    @avengers = Avenger.all
    # render "index.html.erb"
  end

  def show
    @avenger = Avenger.find(params[:id])
    # render "show.html.erb"
# ----NEW FOR SKILLS
    @skill = Skill.new
    @skills = @avenger.skills

  end




  def new
    @avenger = Avenger.new
  end

  def create
# Create action is invoked when the POST request was made by the browser
# due to the new.html.erb
  @avenger = Avenger.new(params[:avenger].permit(:name))
    if @avenger.save
      # render :show
      redirect_to avenger_url(@avenger)
    else
      render json: @avenger.errors.full_messages, status: :unprocessable_entity
    end
  end



  def edit
    @avenger = Avenger.find(params[:id])
  end

  def update
    @avenger = Avenger.find(params[:id])
    if @avenger.update(params[:hero].permit(:name))
      redirect_to avenger_url(@avenger)
    else
      render json: @avenger.errors.full_messages, status: :unprocessable_entity
    end
  end


  def destroy
    avenger = Avenger.find(params[:id])
    avenger.destroy
    redirect_to avengers_url
  end
end