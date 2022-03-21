class Auditions < ActiveRecord::Migration[5.2]
  def change
    create_table :auditions do |a|
      a.string :actor
      a.string :location
      a.integer :phone
      a.boolean :hired
      a.integer :role_id
    end
  end
end
