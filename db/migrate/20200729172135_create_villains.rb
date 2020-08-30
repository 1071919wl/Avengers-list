class CreateVillains < ActiveRecord::Migration[6.0]
  def change
    create_table :villains do |t|
      t.string :name, null: false
    end
  end
end
