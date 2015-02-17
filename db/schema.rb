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

ActiveRecord::Schema.define(version: 20150217144009) do

  create_table "advertises", force: :cascade do |t|
    t.string   "price"
    t.string   "duration"
    t.string   "from_date"
    t.string   "until_date"
    t.string   "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "offer_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.string   "population"
    t.string   "medium_salary"
    t.string   "merium_rent"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "country_id"
  end

  create_table "city_districts", force: :cascade do |t|
    t.string   "name"
    t.string   "population"
    t.string   "salary"
    t.string   "medium_rent"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "city_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "population"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "offers", force: :cascade do |t|
    t.string   "address"
    t.string   "postal_code"
    t.string   "house_number"
    t.string   "zip_code"
    t.string   "room_size"
    t.string   "cost_per_month"
    t.string   "deposit"
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "rent_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "offer_id"
  end

end
