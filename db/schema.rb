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

ActiveRecord::Schema.define(version: 2023_05_18_162914) do

  create_table "bookmarks", force: :cascade do |t|
    t.integer "user_id"
    t.integer "limitedsarasota_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "limitedsarasota", force: :cascade do |t|
    t.string "address"
    t.date "year_built"
    t.integer "land_area"
    t.integer "living_area"
    t.string "ownership"
    t.string "municipality"
    t.string "subdivision"
    t.string "zoning"
    t.integer "total_living_units"
    t.integer "buildings"
    t.integer "beds"
    t.integer "baths"
    t.integer "half_baths"
    t.date "eff_year_built"
    t.integer "gross_area"
    t.integer "stories"
    t.string "values_years"
    t.string "values_land"
    t.string "values_building"
    t.string "values_extra_features"
    t.string "values_just"
    t.string "values_assessed"
    t.string "values_exemptions"
    t.string "values_taxable"
    t.string "values_cap"
    t.string "transfer_dates"
    t.string "recorded_considerations"
    t.string "instrument_numbers"
    t.string "qualification_codes"
    t.string "sellers"
    t.string "instrument_types"
    t.integer "taxes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
