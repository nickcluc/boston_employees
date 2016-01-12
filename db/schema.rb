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

ActiveRecord::Schema.define(version: 20160112070410) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "departments", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "name",                      null: false
    t.integer  "job_id",                    null: false
    t.integer  "department_id",             null: false
    t.integer  "regular",       default: 0, null: false
    t.integer  "retro",         default: 0, null: false
    t.integer  "other_pay",     default: 0, null: false
    t.integer  "overtime",      default: 0, null: false
    t.integer  "injured",       default: 0, null: false
    t.integer  "detail",        default: 0, null: false
    t.integer  "quinn",         default: 0, null: false
    t.integer  "total",         default: 0, null: false
    t.string   "zipcode",                   null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
