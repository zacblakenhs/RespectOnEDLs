class AddAdmissionIdToEdls < ActiveRecord::Migration[6.0]
  def change
    add_column :edls, :admission_id, :integer
    add_index :edls, :admission_id
    add_foreign_key :edls, :admissions
  end
end
