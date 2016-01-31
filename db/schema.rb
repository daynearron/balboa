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

ActiveRecord::Schema.define(version: 20160131213500) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abouts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "current_auto_insurance_policies", force: :cascade do |t|
    t.integer "insurance_lead_id"
    t.string  "style"
    t.string  "content_type"
    t.string  "file_name"
    t.binary  "file_contents"
  end

  create_table "current_home_insurance_policies", force: :cascade do |t|
    t.integer "insurance_lead_id"
    t.string  "style"
    t.string  "content_type"
    t.string  "file_name"
    t.binary  "file_contents"
  end

  create_table "customer_services", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "site"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "slug"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  add_index "customer_services", ["slug"], name: "index_customer_services_on_slug", unique: true, using: :btree

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree

  create_table "insurance_leads", force: :cascade do |t|
    t.string   "first_name",                                 null: false
    t.string   "last_name",                                  null: false
    t.string   "phone",                                      null: false
    t.string   "email",                                      null: false
    t.text     "home_address",                               null: false
    t.text     "home_address2"
    t.string   "city",                                       null: false
    t.string   "state",                                      null: false
    t.string   "zip_code",                                   null: false
    t.string   "country",                                    null: false
    t.text     "drivers_information"
    t.string   "current_auto_insurance_policy_file_name"
    t.string   "current_auto_insurance_policy_content_type"
    t.integer  "current_auto_insurance_policy_file_size"
    t.datetime "current_auto_insurance_policy_updated_at"
    t.string   "homeowners_quote_type"
    t.boolean  "own_dogs"
    t.string   "dog_1_breed"
    t.string   "dog_2_breed"
    t.string   "dog_3_breed"
    t.boolean  "home_security_system"
    t.boolean  "major_home_updates"
    t.string   "current_home_insurance_policy_file_name"
    t.string   "current_home_insurance_policy_content_type"
    t.integer  "current_home_insurance_policy_file_size"
    t.datetime "current_home_insurance_policy_updated_at"
    t.boolean  "college_grad"
    t.string   "college_name"
    t.string   "college_degree"
    t.text     "work_positions"
    t.boolean  "interested_in_earthquake"
    t.boolean  "interested_in_flood"
    t.boolean  "interested_in_umbrella"
    t.boolean  "interested_in_life_insurance"
    t.text     "additional_details"
    t.boolean  "has_referral"
    t.string   "referral_first_name"
    t.string   "referral_last_name"
    t.string   "referral_email"
    t.string   "referral_phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "insurances", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "link"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "slug"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "insurances", ["slug"], name: "index_insurances_on_slug", unique: true, using: :btree

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "slug"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "posts", ["slug"], name: "index_posts_on_slug", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
