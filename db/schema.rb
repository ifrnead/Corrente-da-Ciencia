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

ActiveRecord::Schema.define(version: 20161222201152) do

  create_table "cidades", force: :cascade do |t|
    t.integer  "codigo",     limit: 4
    t.string   "nome",       limit: 255
    t.integer  "estado_id",  limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "cidades", ["estado_id"], name: "index_cidades_on_estado_id", using: :btree

  create_table "estados", force: :cascade do |t|
    t.integer  "codigo",     limit: 4
    t.string   "nome",       limit: 255
    t.string   "sigla",      limit: 2
    t.string   "pais",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "ip",         limit: 255
    t.float    "latitude",   limit: 24
    t.float    "longitude",  limit: 24
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "cidade",     limit: 255
    t.string   "uf",         limit: 255
    t.string   "pais",       limit: 255
  end

  add_foreign_key "cidades", "estados"
end
