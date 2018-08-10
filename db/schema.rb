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

ActiveRecord::Schema.define(version: 20180810185053) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "dogs", force: :cascade do |t|
    t.string "name"
    t.integer "level"
    t.integer "points"
    t.integer "stamina"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.bigint "hydrant_id"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hydrant_id"], name: "index_events_on_hydrant_id"
  end

  create_table "hydrants", force: :cascade do |t|
    t.string "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ownerships", force: :cascade do |t|
    t.bigint "hydrant_id"
    t.bigint "dog_id"
    t.bigint "visit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dog_id"], name: "index_ownerships_on_dog_id"
    t.index ["hydrant_id"], name: "index_ownerships_on_hydrant_id"
    t.index ["visit_id"], name: "index_ownerships_on_visit_id"
  end

  create_table "visits", force: :cascade do |t|
    t.bigint "dog_id"
    t.bigint "hydrant_id"
    t.integer "stamina_used"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dog_id"], name: "index_visits_on_dog_id"
    t.index ["hydrant_id"], name: "index_visits_on_hydrant_id"
  end

  add_foreign_key "events", "hydrants"
  add_foreign_key "ownerships", "dogs"
  add_foreign_key "ownerships", "hydrants"
  add_foreign_key "ownerships", "visits"
  add_foreign_key "visits", "dogs"
  add_foreign_key "visits", "hydrants"
end
