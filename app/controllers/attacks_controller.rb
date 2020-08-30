class AttacksController < ApplicationController

    def create
      @villain = Villain.find(params[:villain_id])
      @attack = @villain.attacks.create(params[:attack].permit(:attack))
      if @attack.save
        redirect_to villain_url(@villain)
      end
    end

    def destroy
      @villain=Villain.find(params[:villain_id])
      @attack=Attack.find(params[:id])
      @attack.destroy
      redirect_to villain_url(@villain)
    end
end


