class AddAttackToVillains < ActiveRecord::Migration[6.0]
  def change
      add_reference :attacks, :villain
  end
end


