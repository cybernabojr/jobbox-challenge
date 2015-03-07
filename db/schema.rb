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

ActiveRecord::Schema.define(version: 20150307210747) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: true do |t|
    t.string   "name"
    t.string   "logo_url"
    t.string   "website_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "short_pitch"
    t.text     "description"
  end

  create_table "offers", force: true do |t|
    t.string   "city"
    t.integer  "company_id"
    t.string   "country_code"
    t.string   "country_name"
    t.string   "currency_code"
    t.date     "expires_at"
    t.text     "nice_to_have"
    t.text     "perks"
    t.datetime "published_at"
    t.integer  "reward"
    t.boolean  "remote"
    t.boolean  "relocation_paid"
    t.text     "role_description"
    t.integer  "salary_low"
    t.integer  "salary_high"
    t.boolean  "successful?"
    t.string   "title"
    t.boolean  "work_from_home"
    t.string   "type"
    t.string   "tags",             default: [], array: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
