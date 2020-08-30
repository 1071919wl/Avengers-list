class CreateAttacks < ActiveRecord::Migration[6.0]
  def change
    create_table :attacks do |t|
      t.string :attack, null: false
    end
  end
end
