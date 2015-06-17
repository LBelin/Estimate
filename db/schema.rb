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

ActiveRecord::Schema.define(version: 20150617194056) do

  create_table "big_time_entries", force: true do |t|
    t.integer  "fog_bugz_case_id"
    t.datetime "WorkDate"
    t.string   "person"
    t.decimal  "hours"
    t.text     "comment",          limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "features", force: true do |t|
    t.string   "title"
    t.integer  "estimate"
    t.decimal  "actual"
    t.integer  "num_cases"
    t.boolean  "completed?"
    t.boolean  "active?"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fog_bugz_cases", force: true do |t|
    t.integer  "case_id"
    t.string   "title"
    t.integer  "estimated"
    t.decimal  "current"
    t.string   "person"
    t.boolean  "resolved?"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
