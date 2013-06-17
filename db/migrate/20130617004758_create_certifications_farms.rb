class CreateCertificationsFarms < ActiveRecord::Migration
  def change
    create_table :certifications_farms do |t|

    	t.integer :certification_id
    	t.integer :farm_id

      t.timestamps
    end
  end
end
