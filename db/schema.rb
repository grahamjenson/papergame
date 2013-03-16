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

ActiveRecord::Schema.define(:version => 20130316050912) do

  create_table "award_templates", :force => true do |t|
    t.integer  "award_id"
    t.string   "title"
    t.text     "description"
    t.string   "image"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "awards", :force => true do |t|
    t.integer  "user_id"
    t.float    "complete"
    t.integer  "retailer_id"
    t.text     "description"
    t.string   "title"
    t.string   "image"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "identifiers", :force => true do |t|
    t.string   "identifier_id"
    t.string   "type_token"
    t.string   "issuer"
    t.string   "value"
    t.string   "display"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "receipts", :force => true do |t|
    t.string   "receipt_id"
    t.datetime "date_time"
    t.integer  "retailer_id"
    t.integer  "shop_id"
    t.integer  "pos_id"
    t.float    "tax_total"
    t.float    "cost_total"
    t.string   "currency"
    t.text     "notes"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "retailers", :force => true do |t|
    t.string   "retailer_id"
    t.string   "name"
    t.string   "prefix"
    t.string   "phone1"
    t.string   "phone2"
    t.string   "fax"
    t.string   "email"
    t.string   "website"
    t.string   "country"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "shops", :force => true do |t|
    t.string   "retailer_id"
    t.string   "shop_id"
    t.string   "category"
    t.string   "name"
    t.string   "tax_id"
    t.float    "geo_lon"
    t.float    "geo_lat"
    t.string   "phone1"
    t.string   "phone2"
    t.string   "fax"
    t.string   "email"
    t.string   "website"
    t.string   "address_street"
    t.string   "address_street2"
    t.string   "address_suburb"
    t.string   "address_city"
    t.string   "address_postcode"
    t.string   "address_country"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "triggers", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "legals"
    t.text     "rule"
    t.text     "action"
    t.datetime "date_from"
    t.datetime "date_to"
    t.integer  "qty"
    t.string   "code"
    t.string   "pos_id"
    t.string   "shop_id"
    t.string   "retailer_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
