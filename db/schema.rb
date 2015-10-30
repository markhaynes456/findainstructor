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

ActiveRecord::Schema.define(version: 20151029121156) do

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password"
    t.boolean  "instructor"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "password_digest"
    t.text     "profile"
    t.float    "first_pass_rate"
    t.float    "second_pass_rate"
    t.date     "started_teaching"
    t.integer  "students_taught"
    t.time     "working_hours_monday_start"
    t.time     "working_hours_monday_end"
    t.time     "working_hours_tuesday_start"
    t.time     "working_hours_tuesday_end"
    t.time     "working_hours_wednesday_start"
    t.time     "working_hours_wednesday_end"
    t.time     "working_hours_thursday_start"
    t.time     "working_hours_thursday_end"
    t.time     "working_hours_friday_start"
    t.time     "working_hours_friday_end"
    t.time     "working_hours_saturday_start"
    t.time     "working_hours_saturday_end"
    t.time     "working_hours_sunday_start"
    t.time     "working_hours_sunday_end"
    t.integer  "hourly_rate"
  end

end
