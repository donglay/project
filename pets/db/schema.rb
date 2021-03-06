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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130429083217) do

  create_table "addresses", :force => true do |t|
    t.integer  "person_id"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "zip",        :limit => 5
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "appointments", :force => true do |t|
    t.integer  "pet_id"
    t.integer  "person_id"
    t.datetime "date_of_visit"
    t.boolean  "reminder_required"
    t.string   "reason_for_visit"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "people", :force => true do |t|
    t.string   "name",               :limit => 35
    t.string   "person_type"
    t.string   "degree_from_school"
    t.integer  "years_in_practice"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  create_table "pets", :force => true do |t|
    t.integer  "person_id"
    t.string   "name",       :limit => 35
    t.string   "pet_type"
    t.string   "breed",      :limit => 35
    t.integer  "age"
    t.float    "weight"
    t.date     "last_visit"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
