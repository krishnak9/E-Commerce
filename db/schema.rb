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

ActiveRecord::Schema.define(version: 20160627163348) do

  create_table "brands", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "sale", force: :cascade do |t|
    t.integer  "product_id",     limit: 4
    t.datetime "date_time",                                          null: false
    t.integer  "qty",            limit: 4
    t.string   "user_email",     limit: 200
    t.string   "payment_method", limit: 50
    t.decimal  "discount",                   precision: 5, scale: 3
  end

  create_table "trains", id: false, force: :cascade do |t|
    t.integer "train_no",          limit: 4
    t.string  "train_name",        limit: 200
    t.integer "islno",             limit: 4
    t.string  "station_code",      limit: 30
    t.string  "station_name",      limit: 200
    t.time    "arrival_time"
    t.time    "departure_time"
    t.integer "distance",          limit: 4
    t.string  "src_station_code",  limit: 20
    t.string  "src_station_name",  limit: 200
    t.string  "dest_station_code", limit: 20
    t.string  "dest_station_name", limit: 200
  end

end
