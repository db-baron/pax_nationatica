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

ActiveRecord::Schema.define(version: 20170830074400) do

  create_table "Nations", force: :cascade do |t|
    t.string   "nation_name",  null: false
    t.string   "empire",       null: false
    t.string   "continent"
    t.string   "timeperiod"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.text     "summary"
    t.string   "ica"
    t.text     "rise"
    t.text     "fall"
    t.text     "achievements"
    t.string   "image"
  end

  create_table "Users", force: :cascade do |t|
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "email",           null: false
    t.string   "password",        null: false
    t.string   "favorite_nation"
  end

  create_table "messages", force: :cascade do |t|
    t.string   "message",    null: false
    t.string   "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
