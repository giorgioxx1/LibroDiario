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

ActiveRecord::Schema.define(version: 20170705184552) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "citizen_files", id: false, force: :cascade do |t|
    t.integer "citizen_id"
    t.integer "file_id"
  end

  create_table "citizens", force: :cascade do |t|
    t.string "name"
    t.integer "citizen_id"
    t.integer "age"
    t.boolean "gender"
    t.string "residence"
    t.boolean "detention"
    t.string "place_of_detention"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "competences", force: :cascade do |t|
    t.string "name"
    t.integer "defender_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "file_dps", force: :cascade do |t|
    t.string "subject"
    t.bigint "file_tribunal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["file_tribunal_id"], name: "index_file_dps_on_file_tribunal_id"
  end

  create_table "file_tribunals", force: :cascade do |t|
    t.bigint "tribunal_id"
    t.string "file_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tribunal_id"], name: "index_file_tribunals_on_tribunal_id"
  end

  create_table "settles", force: :cascade do |t|
    t.bigint "file_dp_id"
    t.bigint "user_id"
    t.date "date"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["file_dp_id"], name: "index_settles_on_file_dp_id"
    t.index ["user_id"], name: "index_settles_on_user_id"
  end

  create_table "tribunals", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_competences", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "competence_id"
  end

  create_table "user_file_dps", id: false, force: :cascade do |t|
    t.integer "file_dp_id"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "file_dps", "file_tribunals"
  add_foreign_key "file_tribunals", "tribunals"
  add_foreign_key "settles", "file_dps"
  add_foreign_key "settles", "users"
end
