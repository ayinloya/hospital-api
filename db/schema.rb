# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141128100747) do

  create_table "hospitals", force: true do |t|
    t.string   "name"
    t.string   "region"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "medical_histories", force: true do |t|
    t.string   "bp"
    t.string   "temperature"
    t.decimal  "weight"
    t.text     "signsymptoms"
    t.text     "diagnosis"
    t.text     "drugs"
    t.text     "labTest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "patient_id"
    t.integer  "hospital_id"
  end

  add_index "medical_histories", ["hospital_id"], name: "index_medical_histories_on_hospital_id"
  add_index "medical_histories", ["patient_id"], name: "index_medical_histories_on_patient_id"

  create_table "patients", force: true do |t|
    t.string   "name"
    t.integer  "nssNumber"
    t.integer  "age"
    t.text     "address"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
