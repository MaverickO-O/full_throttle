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

ActiveRecord::Schema.define(version: 20171111043444) do

  create_table "bikes", force: :cascade do |t|
    t.string "bike_name"
    t.string "brand"
    t.string "bike_type"
    t.integer "year"
    t.integer "cylinder_cc"
    t.integer "weight_kg"
    t.integer "weight_lb"
    t.integer "price_usd"
    t.text "intro"
    t.text "style"
    t.integer "style_mark"
    t.text "engine"
    t.integer "engine_mark"
    t.text "handling"
    t.integer "handling_mark"
    t.text "braking"
    t.integer "braking_mark"
    t.text "conclusion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "power_hp"
    t.integer "comfort_mark"
    t.text "comfort"
    t.integer "value_mark"
    t.text "value"
  end

  create_table "brand_bike_dbs", force: :cascade do |t|
    t.string "brand_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.integer "post_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_comments_on_post_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "forumcategs", force: :cascade do |t|
    t.string "titl"
    t.text "descript"
    t.integer "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "newsposts", force: :cascade do |t|
    t.string "title"
    t.text "text"
    t.string "picture"
    t.string "author"
    t.integer "viewcount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.string "image"
    t.string "categ"
    t.text "imagedesc"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "country"
    t.integer "yearbirth"
    t.string "bikelevel"
    t.string "bikebrand1"
    t.string "bikename1"
    t.string "avatar"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
