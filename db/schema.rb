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

ActiveRecord::Schema.define(version: 20160605090940) do

  create_table "cats", force: :cascade do |t|
    t.string   "name"
    t.text     "text"
    t.integer  "user_id"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "cats", ["user_id"], name: "index_cats_on_user_id"

  create_table "like_likes", force: :cascade do |t|
    t.string   "liker_type",    null: false
    t.integer  "liker_id",      null: false
    t.string   "likeable_type", null: false
    t.integer  "likeable_id",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "like_likes", ["liker_type", "liker_id", "likeable_type", "likeable_id"], name: "unique_like_likes", unique: true

  create_table "profiles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
