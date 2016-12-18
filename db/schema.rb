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

ActiveRecord::Schema.define(version: 20161218144718) do

  create_table "people", force: :cascade do |t|
    t.string   "name",                   null: false
    t.datetime "born_on"
    t.integer  "profession", default: 0
    t.datetime "died_on"
    t.string   "country"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["name"], name: "index_people_on_name"
  end

  create_table "quotes", force: :cascade do |t|
    t.string   "text",                   null: false
    t.integer  "genre",      default: 0
    t.integer  "author_id"
    t.integer  "status",     default: 0
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["author_id"], name: "index_quotes_on_author_id"
    t.index ["genre"], name: "index_quotes_on_genre"
  end

end
