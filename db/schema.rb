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

ActiveRecord::Schema.define(version: 2019_11_03_021237) do

  create_table "act_cats", force: :cascade do |t|
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "action_cats", force: :cascade do |t|
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "client_cats", force: :cascade do |t|
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "client_ranks", force: :cascade do |t|
    t.string "rank"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "company_name1"
    t.string "company_name2"
    t.string "postcode"
    t.string "addr1"
    t.string "addr2"
    t.string "addr3"
    t.string "tel"
    t.string "fax"
    t.string "client_person_in_charge"
    t.string "mobile"
    t.string "url"
    t.string "email"
    t.integer "client_rank_id"
    t.integer "client_cat_id"
    t.integer "closing_day_id"
    t.integer "payment_day_id"
    t.integer "payment_method_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_cat_id"], name: "index_clients_on_client_cat_id"
    t.index ["client_rank_id"], name: "index_clients_on_client_rank_id"
    t.index ["closing_day_id"], name: "index_clients_on_closing_day_id"
    t.index ["payment_day_id"], name: "index_clients_on_payment_day_id"
    t.index ["payment_method_id"], name: "index_clients_on_payment_method_id"
    t.index ["user_id"], name: "index_clients_on_user_id"
  end

  create_table "closing_days", force: :cascade do |t|
    t.string "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.integer "act_cat_id"
    t.text "detail"
    t.string "file"
    t.datetime "start_date"
    t.datetime "end_date"
    t.boolean "in_progress"
    t.integer "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["act_cat_id"], name: "index_contacts_on_act_cat_id"
    t.index ["client_id"], name: "index_contacts_on_client_id"
  end

  create_table "payment_days", force: :cascade do |t|
    t.string "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payment_methods", force: :cascade do |t|
    t.string "method"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.boolean "administrator"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
