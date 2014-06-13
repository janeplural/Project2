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

ActiveRecord::Schema.define(version: 20140613005040) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "calendar_entries", force: true do |t|
    t.datetime "start_datetime"
    t.datetime "end_datetime"
    t.string   "name"
    t.string   "image_url"
    t.integer  "family_id"
    t.text     "desription"
    t.string   "event_type"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "families", force: true do |t|
    t.string   "nickname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "participations", force: true do |t|
    t.integer  "person_id"
    t.integer  "calendar_entry_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "persons", force: true do |t|
    t.string   "family_id"
    t.string   "nickname"
    t.string   "first_name"
    t.string   "last_name"
    t.text     "description"
    t.string   "facebook_username"
    t.string   "uploaded_headshot_url"
    t.string   "headshot_used"
    t.text     "notes_on_availability"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
