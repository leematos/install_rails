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

ActiveRecord::Schema.define(version: 20131107174650) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "edges", force: true do |t|
    t.integer  "predecessor_id"
    t.integer  "successor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "edges", ["predecessor_id"], name: "index_edges_on_predecessor_id", using: :btree
  add_index "edges", ["successor_id"], name: "index_edges_on_successor_id", using: :btree

  create_table "steps", force: true do |t|
    t.string "title"
    t.string "permalink"
    t.text   "content"
    t.text   "styles"
  end

  add_index "steps", ["permalink"], name: "index_steps_on_permalink", using: :btree

  create_table "users", force: true do |t|
    t.boolean "admin"
    t.boolean "guest"
    t.text    "preferences"
  end

end
