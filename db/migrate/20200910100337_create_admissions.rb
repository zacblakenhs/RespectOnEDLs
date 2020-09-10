class CreateAdmissions < ActiveRecord::Migration[6.0]
  def change
    create_table :admissions do |t|
      t.references :patient, null: false, foreign_key: true
      t.references :consultant, null: false, foreign_key: true
      t.date :admit_time
      t.date :discharge_time
      t.string :ward

      t.timestamps
    end
  end
end
