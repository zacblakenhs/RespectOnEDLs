class AddGenderToPatients < ActiveRecord::Migration[6.0]
  def change
    add_column :patients, :gender, :string
  end
end
