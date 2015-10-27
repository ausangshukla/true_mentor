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

ActiveRecord::Schema.define(version: 20151026164924) do

  create_table "idea_components", force: :cascade do |t|
    t.text     "summary",             limit: 65535
    t.text     "details",             limit: 65535
    t.string   "tags",                limit: 255
    t.integer  "idea_id",             limit: 4
    t.string   "idea_component_type", limit: 255
    t.integer  "order",               limit: 4
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "ideas", force: :cascade do |t|
    t.text     "summary",       limit: 65535
    t.text     "details",       limit: 65535
    t.string   "tags",          limit: 255
    t.integer  "repository_id", limit: 4
    t.string   "idea_type",     limit: 255
    t.integer  "order",         limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "repositories", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "summary",     limit: 65535
    t.string   "tags",        limit: 255
    t.text     "description", limit: 65535
    t.string   "repo_type",   limit: 255
    t.integer  "created_by",  limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "last_name",  limit: 255
    t.string   "first_name", limit: 255
    t.string   "email",      limit: 255
    t.string   "role",       limit: 255
    t.string   "team",       limit: 255
    t.integer  "company_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
