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

ActiveRecord::Schema.define(version: 20140915074940) do

  create_table "banners", force: true do |t|
    t.string   "server_image_url"
    t.string   "show_on_home_page"
    t.string   "associated_link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "device_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "event_banners", force: true do |t|
    t.integer  "event_id"
    t.integer  "banner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "event_regions", force: true do |t|
    t.integer  "event_id"
    t.integer  "region_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "event_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.string   "event_details"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "event_type_id"
    t.integer  "region_id"
    t.integer  "banner_id"
    t.integer  "role_id"
  end

  create_table "multimedia", force: true do |t|
    t.string   "server_location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "multimedia_types", force: true do |t|
    t.string   "media_type"
    t.string   "media_format"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "news", force: true do |t|
    t.text     "new_description"
    t.text     "headline"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "news_date"
    t.integer  "role_id"
  end

  create_table "notifications", force: true do |t|
    t.integer  "user_id"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_banners", force: true do |t|
    t.integer  "product_id"
    t.integer  "banner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_multimedia", force: true do |t|
    t.integer  "product_id"
    t.integer  "multimedia_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_regions", force: true do |t|
    t.decimal  "price",      precision: 10, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "region_id"
    t.integer  "product_id"
  end

  create_table "products", force: true do |t|
    t.text     "product_name"
    t.text     "product_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "regions", force: true do |t|
    t.string   "currency"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "role_type"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_devices", force: true do |t|
    t.integer  "device_key"
    t.integer  "user_id"
    t.integer  "device_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_roles", force: true do |t|
    t.integer  "role_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
