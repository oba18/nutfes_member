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

ActiveRecord::Schema.define(version: 20180319055854) do

  create_table "member_images", force: :cascade do |t|
    t.integer  "member_id",    null: false
    t.binary   "date　"
    t.string   "content_type"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "member_images", ["member_id"], name: "index_member_images_on_member_id"

  create_table "members", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "kyoku",      null: false
    t.string   "cource"
    t.integer  "grade"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "labo"
    t.string   "furigana"
    t.string   "gakunen"
    t.string   "work"
    t.integer  "kyokuchou"
  end

end
