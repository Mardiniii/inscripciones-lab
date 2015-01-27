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

ActiveRecord::Schema.define(version: 20150127174004) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clubs", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "address"
    t.string   "email"
    t.string   "municipality"
    t.string   "phone"
    t.string   "cellphone"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "clubs", ["user_id"], name: "index_clubs_on_user_id"

  create_table "field_hours", force: :cascade do |t|
    t.time     "open_hour"
    t.time     "closing_time"
    t.integer  "field_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "field_hours", ["field_id"], name: "index_field_hours_on_field_id"

  create_table "fields", force: :cascade do |t|
    t.integer  "type"
    t.string   "address"
    t.integer  "club_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "fields", ["club_id"], name: "index_fields_on_club_id"

  create_table "managers", force: :cascade do |t|
    t.string   "name"
    t.string   "cellphone"
    t.string   "phone"
    t.string   "email"
    t.integer  "club_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "managers", ["club_id"], name: "index_managers_on_club_id"

  create_table "presidents", force: :cascade do |t|
    t.string   "name"
    t.integer  "identification"
    t.string   "phone"
    t.string   "fax"
    t.string   "cellphone"
    t.string   "email"
    t.integer  "club_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "presidents", ["club_id"], name: "index_presidents_on_club_id"

  create_table "register_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "registers", force: :cascade do |t|
    t.integer  "register_type_id"
    t.integer  "registration_id"
    t.string   "first_name"
    t.string   "second_name"
    t.string   "first_last_name"
    t.string   "second_last_name"
    t.date     "date_of_birth"
    t.string   "eps"
    t.string   "email"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "registers", ["register_type_id"], name: "index_registers_on_register_type_id"
  add_index "registers", ["registration_id"], name: "index_registers_on_registration_id"

  create_table "registrations", force: :cascade do |t|
    t.integer  "categorie_id"
    t.integer  "tournament_id"
    t.integer  "club_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "registrations", ["categorie_id"], name: "index_registrations_on_categorie_id"
  add_index "registrations", ["club_id"], name: "index_registrations_on_club_id"
  add_index "registrations", ["tournament_id"], name: "index_registrations_on_tournament_id"

  create_table "tournaments", force: :cascade do |t|
    t.integer  "categorie_id"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "tournaments", ["categorie_id"], name: "index_tournaments_on_categorie_id"

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "identification_number"
    t.string   "last_name"
    t.string   "cellphone"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
