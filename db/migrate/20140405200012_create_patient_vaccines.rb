class CreatePatientVaccines < ActiveRecord::Migration
  def change
    create_table :patient_vaccines do |t|
      t.integer :patient_id
      t.integer :vaccine_id

      t.timestamps
    end
  end
end
