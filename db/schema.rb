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

ActiveRecord::Schema.define(:version => 20130715223857) do

  create_table "operating_expenses", :force => true do |t|
    t.float    "cost"
    t.string   "typ"
    t.integer  "year_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "proformas", :force => true do |t|
    t.integer  "users_id"
    t.string   "name"
    t.string   "address"
    t.string   "state"
    t.integer  "sqft"
    t.integer  "units"
    t.integer  "purchase_price"
    t.integer  "sale_price"
    t.float    "rev_growth"
    t.float    "opex_growth"
    t.float    "vacancy"
    t.float    "discount_rate"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "revenues", :force => true do |t|
    t.float    "income"
    t.string   "typ"
    t.integer  "year_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "years", :force => true do |t|
    t.integer  "proforma_id"
    t.integer  "year"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
