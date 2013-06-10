class CreateFarms < ActiveRecord::Migration
  def change
    create_table :farms do |t|
      t.string :fruit
      t.integer :community_id
      t.integer :planted_on
      t.string :area
      t.string :soil_type
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
