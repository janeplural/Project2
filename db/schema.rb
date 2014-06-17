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

ActiveRecord::Schema.define(version: 20140617013500) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "calendar_entries", force: true do |t|
    t.string   "type"
    t.integer  "family_id"
    t.datetime "start_datetime"
    t.datetime "end_datetime"
    t.string   "name"
    t.text     "description"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "children", force: true do |t|
    t.string   "index"
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
    t.string   "name_DNU_just_for_debugging"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "persons", force: true do |t|
    t.string   "type"
    t.string   "family_id"
    t.string   "nickname"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "day_start_time"
    t.datetime "day_end_time"

    t.text     "notes_on_availability"
    t.text     "description"
    t.string   "headshot_type"
    t.string   "facebook_username"

    t.string   "uploaded_headshot_url"

    t.string   "paperclip_headshot_url"
    t.string   "other_headshot_url"

    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "persons", ["email"], name: "index_persons_on_email", unique: true, using: :btree
  add_index "persons", ["reset_password_token"], name: "index_persons_on_reset_password_token", unique: true, using: :btree

end
