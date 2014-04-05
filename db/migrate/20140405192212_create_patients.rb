class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.integer :bracelet_id
      t.datetime :dob
      t.integer :village_id
      t.string :mobile

      t.timestamps
    end
  end
end
