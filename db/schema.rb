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

ActiveRecord::Schema.define(version: 2020_01_14_142013) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "add_photo", id: :string, limit: 1024, force: :cascade do |t|
    t.datetime "received_at"
    t.datetime "uuid_ts"
    t.text "album_id"
    t.text "album_name"
    t.text "booth_id"
    t.text "brand_name"
    t.text "context_library_name"
    t.text "context_library_version"
    t.text "email"
    t.text "event"
    t.text "event_text"
    t.text "name"
    t.datetime "original_timestamp"
    t.text "photo"
    t.datetime "sent_at"
    t.datetime "timestamp"
    t.text "user_id"
    t.text "segment_object_id"
    t.text "in_store_date"
    t.bigint "photo_count"
    t.boolean "photo_credits"
    t.text "photo_group"
    t.text "photo_type"
    t.text "upload_method"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shops", force: :cascade do |t|
    t.string "name"
    t.integer "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "address"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
