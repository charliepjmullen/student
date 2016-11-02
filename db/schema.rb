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

ActiveRecord::Schema.define(version: 20161007124512) do

  create_table "candidates", force: true do |t|
    t.string   "can_name"
    t.string   "can_surname"
    t.date     "dob"
    t.string   "college"
    t.integer  "college_year"
    t.integer  "phone_num"
    t.string   "can_email"
    t.string   "address"
    t.text     "experience"
    t.string   "can_password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employers", force: true do |t|
    t.string   "emp_name"
    t.string   "location"
    t.string   "emp_sector"
    t.string   "emp_email"
    t.string   "emp_password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs", force: true do |t|
    t.string   "name"
    t.string   "employer"
    t.string   "sector"
    t.text     "experience_req"
    t.text     "job_info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "requests", force: true do |t|
    t.string   "job_id"
    t.string   "can_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sectors", force: true do |t|
    t.string   "sector_name"
    t.integer  "num_of_jobs"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "picture"
  end

end
