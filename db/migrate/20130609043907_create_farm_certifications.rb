class CreateFarmCertifications < ActiveRecord::Migration
  def change
    create_table :farm_certifications do |t|
      t.integer :farm_id
      t.integer :certification_id

      t.timestamps
    end
  end
end
