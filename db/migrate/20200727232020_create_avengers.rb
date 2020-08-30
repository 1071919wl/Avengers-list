class CreateAvengers < ActiveRecord::Migration[6.0]
  def change
    create_table :avengers do |t|
      t.string :name, null: false
    end
  end
end

