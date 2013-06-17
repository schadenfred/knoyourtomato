class CreateCohabitantsFarms < ActiveRecord::Migration
  def change
    create_table :cohabitants_farms do |t|
      t.integer :cohabitant_id
      t.integer :farm_id

      t.timestamps
    end
  end
end
