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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130505151736) do

  create_table "ekidata_rails_ekidata_stations", :force => true do |t|
    t.integer  "code",        :null => false
    t.integer  "group_code",  :null => false
    t.string   "name",        :null => false
    t.string   "name_kana"
    t.string   "name_latin"
    t.integer  "line_code",   :null => false
    t.integer  "pref_code"
    t.string   "postal_code"
    t.string   "address"
    t.float    "lon"
    t.float    "lat"
    t.date     "opened_at"
    t.date     "closed_at"
    t.integer  "status"
    t.integer  "sort"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "ekidata_rails_ekidata_stations", ["code"], :name => "index_ekidata_rails_ekidata_stations_on_code", :unique => true
  add_index "ekidata_rails_ekidata_stations", ["line_code"], :name => "index_ekidata_rails_ekidata_stations_on_line_code"

end
