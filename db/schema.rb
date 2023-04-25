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

ActiveRecord::Schema[7.0].define(version: 2023_04_25_045209) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "colors", force: :cascade do |t|
    t.string "color"
    t.bigint "shoes_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shoes_id"], name: "index_colors_on_shoes_id"
  end

  create_table "images", force: :cascade do |t|
    t.string "url"
    t.bigint "shoes_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shoes_id"], name: "index_images_on_shoes_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.integer "count"
    t.string "size"
    t.bigint "shoes_id", null: false
    t.bigint "users_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shoes_id"], name: "index_reservations_on_shoes_id"
    t.index ["users_id"], name: "index_reservations_on_users_id"
  end

  create_table "shoes", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.text "description"
    t.boolean "sale"
    t.string "categroy"
    t.bigint "users_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["users_id"], name: "index_shoes_on_users_id"
  end

  create_table "sizes", force: :cascade do |t|
    t.string "size"
    t.bigint "shoes_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shoes_id"], name: "index_sizes_on_shoes_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "colors", "shoes", column: "shoes_id"
  add_foreign_key "images", "shoes", column: "shoes_id"
  add_foreign_key "reservations", "shoes", column: "shoes_id"
  add_foreign_key "reservations", "users", column: "users_id"
  add_foreign_key "shoes", "users", column: "users_id"
  add_foreign_key "sizes", "shoes", column: "shoes_id"
end
