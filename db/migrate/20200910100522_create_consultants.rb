class CreateConsultants < ActiveRecord::Migration[6.0]
  def change
    create_table :consultants do |t|
      t.string :title
      t.string :firstname
      t.string :surname
      t.string :specialty
      t.string :discipline

      t.timestamps
    end
  end
end
