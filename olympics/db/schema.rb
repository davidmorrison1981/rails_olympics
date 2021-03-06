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

ActiveRecord::Schema.define(version: 20161026094015) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "athletes", force: :cascade do |t|
    t.string   "name"
    t.integer  "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "athletes", ["country_id"], name: "index_athletes_on_country_id", using: :btree

  create_table "competes", force: :cascade do |t|
    t.integer  "event_id"
    t.integer  "athlete_id"
    t.float    "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "competes", ["athlete_id"], name: "index_competes_on_athlete_id", using: :btree
  add_index "competes", ["event_id"], name: "index_competes_on_event_id", using: :btree

  create_table "countries", force: :cascade do |t|
    t.string   "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "athletes", "countries"
  add_foreign_key "competes", "athletes"
  add_foreign_key "competes", "events"
end
