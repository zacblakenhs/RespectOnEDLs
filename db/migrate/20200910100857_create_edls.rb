class CreateEdls < ActiveRecord::Migration[6.0]
  def change
    create_table :edls do |t|
      t.string :presenting_complaint
      t.string :pmhx
      t.string :allergies
      t.string :investigations
      t.string :memory_matters
      t.string :MRSA
      t.string :actions_for_gp
      t.string :medication

      t.timestamps
    end
  end
end
