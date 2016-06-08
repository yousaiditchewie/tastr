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

ActiveRecord::Schema.define(version: 20160608210321) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.text     "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "recipe_id"
    t.integer  "user_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer  "tick"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "recipe_id"
    t.integer  "user_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string   "recipe_name"
    t.string   "photo_url"
    t.text     "description"
    t.text     "cooking_instruction"
    t.string   "prep_time"
    t.string   "cook_time"
    t.string   "total_time"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "user_id"
    t.string   "recipe_pic_file_name"
    t.string   "recipe_pic_content_type"
    t.integer  "recipe_pic_file_size"
    t.datetime "recipe_pic_updated_at"
  end

  create_table "recipes_tags", force: :cascade do |t|
    t.integer "tag_id"
    t.integer "recipe_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string   "word"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "photo_url"
    t.text     "about_me"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
