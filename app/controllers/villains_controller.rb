class VillainsController < ApplicationController
  def index
    @villains = Villain.all
    # render "index.html.erb"
  end

  def show
    @villain = Villain.find(params[:id])
# ------NEW FOR ATTACKS
    @attack = Attack.new
    @attacks = @villain.attacks
  end

  def new
    @villain = Villain.new
  end

  def create
    @villain = Villain.new(params[:villain].permit(:name))
    if @villain.save
      redirect_to villain_url(@villain)
    else
      render json: @avenger.errors.full_messages, status: :unprocessable_entity
    end
  end

  def edit
    @villian = Villain.find(params[:id])
  end

  def update
    @villain = Villain.find(params[:id])
    if @villain.update(params[:villain].permit(:name))
      redirect_to villain_url(@villain)
    else
      render json: @avenger.errors.full_messages, status: :unprocessable_entity
    end

  end



  def destroy
    villain = Villain.find(params[:id])
    villain.destroy
    redirect_to villains_url
  end
end
