class CreateFarms < ActiveRecord::Migration
  def change
    create_table :farms do |t|
      t.integer :coconut_type
      t.integer :community_id
      t.date :planted_on
      t.string :area
      t.string :soil_type
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
