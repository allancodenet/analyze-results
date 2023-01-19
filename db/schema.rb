# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_01_19_165853) do
  create_table "grades", force: :cascade do |t|
    t.string "name"
    t.integer "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "streams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student_subjects", force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "subject_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "grade_id"
    t.index ["grade_id"], name: "index_student_subjects_on_grade_id"
    t.index ["student_id", "subject_id"], name: "index_student_subjects_on_student_id_and_subject_id", unique: true
    t.index ["student_id"], name: "index_student_subjects_on_student_id"
    t.index ["subject_id"], name: "index_student_subjects_on_subject_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "index_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "substream_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.boolean "optional"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "substreams", force: :cascade do |t|
    t.integer "stream_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["stream_id"], name: "index_substreams_on_stream_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "views", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_views_on_email", unique: true
    t.index ["reset_password_token"], name: "index_views_on_reset_password_token", unique: true
  end

  add_foreign_key "student_subjects", "grades"
  add_foreign_key "student_subjects", "students"
  add_foreign_key "student_subjects", "subjects"
  add_foreign_key "substreams", "streams"
end
