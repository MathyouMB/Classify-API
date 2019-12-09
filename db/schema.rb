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

ActiveRecord::Schema.define(version: 2019_12_09_182837) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blacklistedusers", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "blacklist_id"
    t.bigint "user_id"
    t.index ["blacklist_id"], name: "index_blacklistedusers_on_blacklist_id"
    t.index ["user_id"], name: "index_blacklistedusers_on_user_id"
  end

  create_table "blacklists", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_blacklists_on_user_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "courses_users", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "course_id", null: false
    t.index ["user_id", "course_id"], name: "index_courses_users_on_user_id_and_course_id"
  end

  create_table "matchedusers", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "matchlist_id"
    t.bigint "user_id"
    t.index ["matchlist_id"], name: "index_matchedusers_on_matchlist_id"
    t.index ["user_id"], name: "index_matchedusers_on_user_id"
  end

  create_table "matchlists", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_matchlists_on_user_id"
  end

  create_table "programs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "school_id"
    t.index ["school_id"], name: "index_programs_on_school_id"
  end

  create_table "schools", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "schools_users", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "school_id", null: false
    t.index ["user_id", "school_id"], name: "index_schools_users_on_user_id_and_school_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "program_id"
    t.index ["program_id"], name: "index_users_on_program_id"
  end

  add_foreign_key "blacklistedusers", "blacklists"
  add_foreign_key "blacklistedusers", "users"
  add_foreign_key "blacklists", "users"
  add_foreign_key "matchedusers", "matchlists"
  add_foreign_key "matchedusers", "users"
  add_foreign_key "matchlists", "users"
  add_foreign_key "programs", "schools"
  add_foreign_key "users", "programs"
end
