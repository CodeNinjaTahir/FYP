# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_05_20_091029) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "board_payments", force: :cascade do |t|
    t.string "bank_name"
    t.string "account_name"
    t.bigint "account_number"
    t.date "payment_date"
    t.integer "amount"
    t.bigint "client_board_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_board_id"], name: "index_board_payments_on_client_board_id"
  end

  create_table "boards", force: :cascade do |t|
    t.string "name"
    t.string "company_name"
    t.string "status"
    t.string "tpye"
    t.decimal "price"
    t.string "screen_size"
    t.decimal "viewership_count"
    t.string "location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "owner_id", null: false
    t.index ["owner_id"], name: "index_boards_on_owner_id"
  end

  create_table "client_boards", force: :cascade do |t|
    t.bigint "client_id", null: false
    t.bigint "board_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "start_date"
    t.date "end_date"
    t.bigint "total_bill"
    t.integer "content_approved", default: 0, null: false
    t.integer "payment_approved", default: 0, null: false
    t.index ["board_id"], name: "index_client_boards_on_board_id"
    t.index ["client_id"], name: "index_client_boards_on_client_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "email"
    t.string "company_name"
    t.string "address"
    t.bigint "contact_no"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
  end

  create_table "owner_bank_details", force: :cascade do |t|
    t.string "bank"
    t.string "acc_name"
    t.integer "acc_number"
    t.bigint "owner_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["owner_id"], name: "index_owner_bank_details_on_owner_id"
  end

  create_table "owners", force: :cascade do |t|
    t.string "email"
    t.string "company_name"
    t.string "address"
    t.bigint "contact_no"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "board_payments", "client_boards"
  add_foreign_key "boards", "owners"
  add_foreign_key "client_boards", "boards"
  add_foreign_key "client_boards", "clients"
  add_foreign_key "owner_bank_details", "owners"
end
