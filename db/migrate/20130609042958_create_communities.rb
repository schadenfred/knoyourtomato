class CreateCommunities < ActiveRecord::Migration
  def change
    create_table :communities do |t|
      t.string :languages
      t.string :religions
      t.text :description
      t.string :cuisine
      t.string :practices
      t.string :population
      t.string :nearest_town
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
