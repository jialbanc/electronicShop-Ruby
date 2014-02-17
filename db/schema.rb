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

ActiveRecord::Schema.define(version: 20140217212701) do

  create_table "carts", force: true do |t|
    t.string   "idcart"
    t.integer  "numitem"
    t.float    "total"
    t.boolean  "purchased"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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
    t.string   "iditem"
    t.string   "nombreitem"
    t.string   "descripcionitem"
    t.string   "color"
    t.float    "valor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
