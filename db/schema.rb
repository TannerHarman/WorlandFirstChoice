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

ActiveRecord::Schema.define(version: 2018_05_30_010443) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abouts", force: :cascade do |t|
    t.string "name"
    t.string "greeting"
    t.text "about_me"
    t.text "main_img"
    t.text "thumb_img"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.index ["slug"], name: "index_abouts_on_slug", unique: true
  end

  create_table "contacts", force: :cascade do |t|
    t.string "title"
    t.string "phone_number"
    t.string "fax_number"
    t.string "email"
    t.string "address"
    t.text "main_img"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "friendly_id_slugs", id: :serial, force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"
  end

  create_table "programs", force: :cascade do |t|
    t.string "title"
    t.string "subtitle"
    t.text "description"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "service_sections", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "main_img"
  end

  create_table "services", force: :cascade do |t|
    t.string "title"
    t.string "subtitle"
    t.text "body"
    t.text "main_img"
    t.text "thumb_img"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.bigint "service_sections_id"
    t.index ["service_sections_id"], name: "index_services_on_service_sections_id"
    t.index ["slug"], name: "index_services_on_slug", unique: true
  end

  add_foreign_key "services", "service_sections", column: "service_sections_id"
end
