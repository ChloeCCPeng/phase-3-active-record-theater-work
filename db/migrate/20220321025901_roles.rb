class Roles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles do |r|
      r.string :character_name
    end
  end
end
