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
    t.float    "management_fees",      :default => 1200.0
    t.float    "administrative_fees",  :default => 1200.0
    t.float    "payroll_and_benefits", :default => 1200.0
    t.float    "maintenance",          :default => 1200.0
    t.float    "utilities",            :default => 1200.0
    t.float    "insurance",            :default => 1200.0
    t.float    "real_estate_taxes",    :default => 1200.0
    t.float    "miscellaneous",        :default => 1200.0
    t.integer  "proforma_id"
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

  create_table "proformas", :force => true do |t|
    t.integer  "users_id"
    t.string   "name",           :default => "John Doe"
    t.string   "address",        :default => "600 Lexington Ave"
    t.string   "state",          :default => "New York"
    t.integer  "sqft",           :default => 20000
    t.integer  "units",          :default => 100
    t.integer  "purchase_price", :default => 100000
    t.integer  "sale_price",     :default => 150000
    t.float    "rev_growth",     :default => 0.03
    t.float    "opex_growth",    :default => 0.025
    t.float    "vacancy",        :default => 0.1
    t.float    "discount_rate",  :default => 0.07
    t.datetime "created_at",                                      :null => false
    t.datetime "updated_at",                                      :null => false
  end

  create_table "revenues", :force => true do |t|
    t.float    "rent",        :default => 10000.0
    t.float    "parking",     :default => 2000.0
    t.float    "storage",     :default => 3000.0
    t.float    "pet",         :default => 1200.0
    t.float    "laundry",     :default => 3000.0
    t.float    "vending",     :default => 3000.0
    t.integer  "proforma_id", :default => 0
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "screenname"
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
