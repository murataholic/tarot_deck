# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_10_22_123458) do

  create_table "articles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "title", null: false
    t.integer "genre_id", limit: 1, null: false
    t.text "text", null: false
    t.integer "arc1_id", limit: 1, null: false
    t.integer "arc2_id", limit: 1, null: false
    t.integer "arc3_id", limit: 1, null: false
    t.integer "arc4_id", limit: 1, null: false
    t.integer "arc5_id", limit: 1, null: false
    t.integer "arc6_id", limit: 1, null: false
    t.integer "arc7_id", limit: 1, null: false
    t.integer "arc8_id", limit: 1, null: false
    t.integer "arc9_id", limit: 1, null: false
    t.integer "arc10_id", limit: 1, null: false
    t.integer "arc11_id", limit: 1, null: false
    t.integer "arc12_id", limit: 1, null: false
    t.integer "arc13_id", limit: 1, null: false
    t.integer "arc14_id", limit: 1, null: false
    t.integer "arc15_id", limit: 1, null: false
    t.integer "arc16_id", limit: 1, null: false
    t.integer "arc17_id", limit: 1, null: false
    t.integer "arc18_id", limit: 1, null: false
    t.integer "arc19_id", limit: 1, null: false
    t.integer "arc20_id", limit: 1, null: false
    t.integer "mons1_id", limit: 1, null: false
    t.integer "mons2_id", limit: 1, null: false
    t.integer "mons3_id", limit: 1, null: false
    t.integer "mons4_id", limit: 1, null: false
    t.integer "mons5_id", limit: 1, null: false
    t.integer "mons6_id", limit: 1, null: false
    t.integer "mons7_id", limit: 1, null: false
    t.integer "mons8_id", limit: 1, null: false
    t.integer "mons9_id", limit: 1, null: false
    t.integer "mons10_id", limit: 1, null: false
    t.integer "mons11_id", limit: 1, null: false
    t.integer "mons12_id", limit: 1, null: false
    t.integer "mons13_id", limit: 1, null: false
    t.integer "mons14_id", limit: 1, null: false
    t.integer "mons15_id", limit: 1, null: false
    t.integer "mons16_id", limit: 1, null: false
    t.integer "mons17_id", limit: 1, null: false
    t.integer "mons18_id", limit: 1, null: false
    t.integer "mons19_id", limit: 1, null: false
    t.integer "mons20_id", limit: 1, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_articles_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "nickname", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "articles", "users"
end
