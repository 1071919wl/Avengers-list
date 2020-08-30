class AddSkillToAvengers < ActiveRecord::Migration[6.0]
  def change
    add_reference :skills, :avenger
    # , foreign_key: true
  end
end
