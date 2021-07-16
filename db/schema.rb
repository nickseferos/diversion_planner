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

ActiveRecord::Schema.define(version: 2021_07_16_133253) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "daily_plans", force: :cascade do |t|
    t.date "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "diversion_requests", force: :cascade do |t|
    t.string "container_number"
    t.integer "set_asides_required"
    t.string "current_row"
    t.bigint "line_id", null: false
    t.bigint "daily_plan_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["daily_plan_id"], name: "index_diversion_requests_on_daily_plan_id"
    t.index ["line_id"], name: "index_diversion_requests_on_line_id"
  end

  create_table "lines", force: :cascade do |t|
    t.string "name"
    t.float "diversion_rate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "diversion_requests", "daily_plans"
  add_foreign_key "diversion_requests", "lines"
end
