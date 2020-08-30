class SkillsController < ApplicationController

  def create
      @avenger = Avenger.find(params[:avenger_id])
      # :avenger_id is from the schema.rb
      @skill = @avenger.skills.create(skill_params)

      if @skill.save
        redirect_to avenger_url(@avenger)
      end
  end

  def destroy
    @avenger = Avenger.find(params[:avenger_id])

    @skill = Skill.find(params[:id])

    @skill.destroy

    redirect_to avenger_url(@avenger)
  end


  private
  def skill_params
    params.require(:skill).permit(:skill)
    # pointing at the schema.rb

  end
end
