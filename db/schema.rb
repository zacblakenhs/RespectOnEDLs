# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_10_105549) do

  create_table "admissions", force: :cascade do |t|
    t.integer "patient_id", null: false
    t.integer "consultant_id", null: false
    t.date "admit_time"
    t.date "discharge_time"
    t.string "ward"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["consultant_id"], name: "index_admissions_on_consultant_id"
    t.index ["patient_id"], name: "index_admissions_on_patient_id"
  end

  create_table "consultants", force: :cascade do |t|
    t.string "title"
    t.string "firstname"
    t.string "surname"
    t.string "specialty"
    t.string "discipline"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "edls", force: :cascade do |t|
    t.string "presenting_complaint"
    t.string "pmhx"
    t.string "allergies"
    t.string "investigations"
    t.string "memory_matters"
    t.string "MRSA"
    t.string "actions_for_gp"
    t.string "medication"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "patients", force: :cascade do |t|
    t.integer "nhsno", null: false
    t.string "firstname"
    t.string "surname"
    t.date "dob"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "preferred_name"
    t.index ["nhsno"], name: "index_patients_on_nhsno", unique: true
  end

  create_table "respectforms", force: :cascade do |t|
    t.date "completion_date"
    t.string "clin_comms_bkgrnd"
    t.integer "pt_life_v_comfort_score"
    t.string "pt_priorities"
    t.boolean "clin_life_sus"
    t.boolean "clin_symptom_cntrl"
    t.string "clin_guidance"
    t.boolean "CPR_recommended"
    t.boolean "modified_CPR"
    t.boolean "pt_capacity"
    t.integer "pt_involvement"
    t.string "involvement_info"
    t.string "decisionmakers"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "admissions", "consultants"
  add_foreign_key "admissions", "patients"
end
