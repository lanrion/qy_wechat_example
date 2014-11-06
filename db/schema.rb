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

ActiveRecord::Schema.define(version: 20141106133837) do

  create_table "qy_accounts", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "qy_token"
    t.string   "encoding_aes_key"
    t.string   "corp_id"
    t.string   "qy_secret_key"
  end

  add_index "qy_accounts", ["corp_id"], name: "index_qy_accounts_on_corp_id"
  add_index "qy_accounts", ["encoding_aes_key"], name: "index_qy_accounts_on_encoding_aes_key"
  add_index "qy_accounts", ["qy_secret_key"], name: "index_qy_accounts_on_qy_secret_key"
  add_index "qy_accounts", ["qy_token"], name: "index_qy_accounts_on_qy_token"

end
