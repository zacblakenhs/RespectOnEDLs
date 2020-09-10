class AddPreferredNameToPatients < ActiveRecord::Migration[6.0]
  def change
    add_column :patients, :preferred_name, :string
  end
end
