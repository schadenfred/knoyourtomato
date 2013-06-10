class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :title
      t.integer :user_id
      t.integer :farm_id
      t.date :tenured_since

      t.timestamps
    end
  end
end
