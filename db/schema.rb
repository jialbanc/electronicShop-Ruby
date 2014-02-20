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

ActiveRecord::Schema.define(version: 20140219221941) do

  create_table "carts", force: true do |t|
    t.integer  "numitem"
    t.float    "total"
    t.boolean  "purchased"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "carts_items", id: false, force: true do |t|
    t.integer "cart_id"
    t.integer "item_id"
  end

  add_index "carts_items", ["cart_id"], name: "index_carts_items_on_cart_id"
  add_index "carts_items", ["item_id"], name: "index_carts_items_on_item_id"

  create_table "clients", force: true do |t|
    t.string   "user"
    t.string   "passw"
    t.string   "nombre"
    t.string   "apellido"
    t.date     "birthday"
    t.string   "direccion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: true do |t|
    t.string   "code"
    t.string   "nombreitem"
    t.string   "descripcion"
    t.string   "color"
    t.float    "valor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", force: true do |t|
    t.string   "session_id", null: false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], name: "index_sessions_on_session_id", unique: true
  add_index "sessions", ["updated_at"], name: "index_sessions_on_updated_at"

  create_table "users", force: true do |t|
    t.string   "email",            null: false
    t.string   "crypted_password", null: false
    t.string   "salt",             null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
