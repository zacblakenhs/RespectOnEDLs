class AddAdmissionIdAndPatientIdToRespectforms < ActiveRecord::Migration[6.0]
  def change
    add_column :respectforms, :admission_id, :integer
    add_index :respectforms, :admission_id
    add_column :respectforms, :patient_id, :integer
    add_index :respectforms, :patient_id
    add_foreign_key :respectforms, :patients
    add_foreign_key :respectforms, :admissions
  end
end
