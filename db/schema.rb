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

ActiveRecord::Schema.define(version: 20150925164738) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.text     "comment",        null: false
    t.datetime "date_time"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "user_id"
    t.integer  "job_posting_id"
  end

  add_index "comments", ["job_posting_id"], name: "index_comments_on_job_posting_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "job_postings", force: :cascade do |t|
    t.string   "company_name", null: false
    t.string   "job_title",    null: false
    t.string   "posting_url",  null: false
    t.datetime "date_time"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
  end

  add_index "job_postings", ["company_name"], name: "index_job_postings_on_company_name", using: :btree
  add_index "job_postings", ["job_title"], name: "index_job_postings_on_job_title", using: :btree
  add_index "job_postings", ["user_id"], name: "index_job_postings_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",            null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.string   "first_name",       null: false
    t.string   "last_name",        null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  add_foreign_key "comments", "job_postings"
  add_foreign_key "comments", "users"
  add_foreign_key "job_postings", "users"
end
