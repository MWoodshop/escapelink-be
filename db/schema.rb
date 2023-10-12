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

ActiveRecord::Schema[7.0].define(version: 2023_10_12_161157) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "rooms", force: :cascade do |t|
    t.text "room_name"
    t.time "fastest_time"
    t.text "fastest_time_nickname"
    t.text "puzzle_1_hint_1"
    t.text "puzzle_1_hint_2"
    t.text "puzzle_1_hint_3"
    t.text "puzzle_2_hint_1"
    t.text "puzzle_2_hint_2"
    t.text "puzzle_2_hint_3"
    t.text "puzzle_3_hint_1"
    t.text "puzzle_3_hint_2"
    t.text "puzzle_3_hint_3"
    t.text "puzzle_4_hint_1"
    t.text "puzzle_4_hint_2"
    t.text "puzzle_4_hint_3"
    t.text "puzzle_5_hint_1"
    t.text "puzzle_5_hint_2"
    t.text "puzzle_5_hint_3"
    t.text "puzzle_6_hint_1"
    t.text "puzzle_6_hint_2"
    t.text "puzzle_6_hint_3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_rooms", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "room_id"
    t.integer "hints_used"
    t.integer "puzzle_1_solved", default: 0
    t.integer "puzzle_2_solved", default: 0
    t.integer "puzzle_3_solved", default: 0
    t.integer "puzzle_4_solved", default: 0
    t.integer "puzzle_5_solved", default: 0
    t.integer "puzzle_6_solved", default: 0
    t.time "elapsed_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_user_rooms_on_room_id"
    t.index ["user_id"], name: "index_user_rooms_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "nickname"
    t.text "email"
    t.text "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "user_rooms", "rooms"
  add_foreign_key "user_rooms", "users"
end