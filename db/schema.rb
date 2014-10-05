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

ActiveRecord::Schema.define(:version => 20141005035309) do

  create_table "clides", :force => true do |t|
    t.string   "name"
    t.string   "url"
    t.integer  "memory_lo"
    t.integer  "memory_hi"
    t.integer  "space_lo"
    t.integer  "space_hi"
    t.boolean  "private"
    t.boolean  "colaboration"
    t.boolean  "community"
    t.boolean  "sudo"
    t.boolean  "ssh"
    t.boolean  "ssl"
    t.boolean  "hosted"
    t.string   "floss"
    t.string   "source"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
