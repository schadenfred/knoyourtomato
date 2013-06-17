class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :title
      t.integer :user_id
      t.date :tenured_since
      t.references :positionable, polymorphic: true

      t.timestamps
    end

    add_index :positions, :title 
    add_index :positions, :user_id
    add_index :positions, [ :positionable_type, :positionable_id ] 
  end
end
