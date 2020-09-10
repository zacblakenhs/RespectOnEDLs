class CreateRespectforms < ActiveRecord::Migration[6.0]
  def change
    create_table :respectforms do |t|
      t.date :completion_date
      t.string :clin_comms_bkgrnd
      t.integer :pt_life_v_comfort_score
      t.string :pt_priorities
      t.boolean :clin_life_sus
      t.boolean :clin_symptom_cntrl
      t.string :clin_guidance
      t.boolean :CPR_recommended
      t.boolean :modified_CPR
      t.boolean :pt_capacity
      t.integer :pt_involvement
      t.string :involvement_info
      t.string :decisionmakers

      t.timestamps
    end
  end
end
