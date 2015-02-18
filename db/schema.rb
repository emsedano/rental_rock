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

ActiveRecord::Schema.define(version: 20150218203838) do

  create_table "accounts", force: :cascade do |t|
    t.string   "username",        limit: 255
    t.string   "company",         limit: 255
    t.string   "firstname",       limit: 255
    t.string   "lastname",        limit: 255
    t.string   "second_lastname", limit: 255
    t.string   "genre",           limit: 255
    t.string   "email",           limit: 255
    t.string   "phone",           limit: 255
    t.string   "telephone",       limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "user_id",         limit: 4
  end

  create_table "addresses", force: :cascade do |t|
    t.integer  "related_subject_id",   limit: 4
    t.string   "related_subject_type", limit: 255
    t.string   "address1",             limit: 255
    t.string   "address2",             limit: 255
    t.string   "neiborghood",          limit: 255
    t.integer  "county_id",            limit: 4
    t.string   "state_id",             limit: 255
    t.integer  "country_id",           limit: 4
    t.string   "zipcode",              limit: 255
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "billing_data", force: :cascade do |t|
    t.string   "fiscal_person", limit: 255
    t.string   "rfc",           limit: 255
    t.string   "fiscal_name",   limit: 255
    t.string   "address1",      limit: 255
    t.string   "address2",      limit: 255
    t.string   "neiborghood",   limit: 255
    t.string   "county",        limit: 255
    t.integer  "state_id",      limit: 4
    t.integer  "country_id",    limit: 4
    t.string   "zipcode",       limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "user_id",       limit: 4
  end

  create_table "counties", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "country_id", limit: 4
    t.integer  "state_id",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "alias",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "owner_invoicing_data", force: :cascade do |t|
    t.integer  "owner_id",      limit: 4
    t.string   "fiscal_person", limit: 255
    t.string   "rfc",           limit: 255
    t.string   "fiscal_name",   limit: 255
    t.string   "address1",      limit: 255
    t.string   "address2",      limit: 255
    t.string   "neiborghood",   limit: 255
    t.string   "county",        limit: 255
    t.integer  "state_id",      limit: 4
    t.integer  "country_id",    limit: 4
    t.string   "zipcode",       limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "plans", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.decimal  "price",                     precision: 8, scale: 2
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
  end

  create_table "real_estate_owners", force: :cascade do |t|
    t.string   "firstname",      limit: 255
    t.string   "lastname",       limit: 255
    t.string   "secondlastname", limit: 255
    t.string   "phone",          limit: 255
    t.string   "mobile",         limit: 255
    t.string   "email",          limit: 255
    t.string   "bank_account",   limit: 255
    t.string   "clabe",          limit: 255
    t.string   "bank_name",      limit: 255
    t.string   "notes",          limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "states", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "alias",      limit: 255
    t.integer  "country_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
