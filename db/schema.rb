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

ActiveRecord::Schema.define(version: 20160812152340) do

  create_table "marks", force: :cascade do |t|
    t.integer  "roll_no",    null: false
    t.integer  "std"
    t.string   "sub_code"
    t.integer  "sub_marks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "staffs", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_staffs_on_email", unique: true
    t.index ["reset_password_token"], name: "index_staffs_on_reset_password_token", unique: true
  end

  create_table "standards", force: :cascade do |t|
    t.integer  "std"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "sect"
    t.string   "sub_code"
  end

  create_table "student_masters", force: :cascade do |t|
    t.integer  "roll_no",         null: false
    t.string   "name",            null: false
    t.integer  "age",             null: false
    t.string   "gender"
    t.string   "father_name"
    t.string   "mother_name"
    t.integer  "standard"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.date     "dob"
    t.string   "registration_no"
    t.index ["registration_no"], name: "index_student_masters_on_registration_no", unique: true
  end

  create_table "subject_masters", force: :cascade do |t|
    t.string   "subject_code"
    t.string   "primary_key"
    t.string   "subject_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
