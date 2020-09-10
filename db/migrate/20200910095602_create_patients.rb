class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.integer :nhsno, null: false, index: { unique: true }
      t.string :firstname
      t.string :surname
      t.date :dob

      t.timestamps
    end
  end
end
