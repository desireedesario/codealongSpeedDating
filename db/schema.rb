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

ActiveRecord::Schema.define(version: 20160726165220) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "codealongs", force: :cascade do |t|
    t.integer  "language_id"
    t.string   "location"
    t.datetime "date"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "codealongs", ["language_id"], name: "index_codealongs_on_language_id", using: :btree

  create_table "codealongs_languages_users", id: false, force: :cascade do |t|
    t.integer "codealong_id"
    t.integer "language_id"
    t.integer "user_id"
  end

  add_index "codealongs_languages_users", ["codealong_id"], name: "index_codealongs_languages_users_on_codealong_id", using: :btree
  add_index "codealongs_languages_users", ["language_id"], name: "index_codealongs_languages_users_on_language_id", using: :btree
  add_index "codealongs_languages_users", ["user_id"], name: "index_codealongs_languages_users_on_user_id", using: :btree

  create_table "codealongs_users", force: :cascade do |t|
    t.integer "user_id"
    t.integer "codealong_id"
  end

  add_index "codealongs_users", ["codealong_id"], name: "index_codealongs_users_on_codealong_id", using: :btree
  add_index "codealongs_users", ["user_id"], name: "index_codealongs_users_on_user_id", using: :btree

  create_table "languages", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.string   "content"
    t.integer  "codealong_id"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "messages", ["codealong_id"], name: "index_messages_on_codealong_id", using: :btree
  add_index "messages", ["user_id"], name: "index_messages_on_user_id", using: :btree

  create_table "snippets", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "language_id"
    t.string   "content"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "snippets", ["language_id"], name: "index_snippets_on_language_id", using: :btree
  add_index "snippets", ["user_id"], name: "index_snippets_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "img_url"
    t.string   "gender"
    t.string   "description"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "codealongs", "languages"
  add_foreign_key "codealongs_users", "codealongs"
  add_foreign_key "codealongs_users", "users"
  add_foreign_key "messages", "codealongs"
  add_foreign_key "messages", "users"
  add_foreign_key "snippets", "languages"
  add_foreign_key "snippets", "users"
end
