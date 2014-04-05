class CreateVaccines < ActiveRecord::Migration
  def change
    create_table :vaccines do |t|
      t.string :name
      t.integer :due_range

      t.timestamps
    end
  end
end
