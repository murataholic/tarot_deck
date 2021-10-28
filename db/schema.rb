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

ActiveRecord::Schema.define(version: 2021_10_24_160631) do

  create_table "articles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "title", null: false
    t.integer "genre_id", limit: 1, null: false
    t.text "text", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_articles_on_user_id"
  end

  create_table "decks", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "article_id", null: false
    t.integer "arc1", limit: 1, null: false
    t.integer "arc2", limit: 1, null: false
    t.integer "arc3", limit: 1, null: false
    t.integer "arc4", limit: 1, null: false
    t.integer "arc5", limit: 1, null: false
    t.integer "arc6", limit: 1, null: false
    t.integer "arc7", limit: 1, null: false
    t.integer "arc8", limit: 1, null: false
    t.integer "arc9", limit: 1, null: false
    t.integer "arc10", limit: 1, null: false
    t.integer "arc11", limit: 1, null: false
    t.integer "arc12", limit: 1, null: false
    t.integer "arc13", limit: 1, null: false
    t.integer "arc14", limit: 1, null: false
    t.integer "arc15", limit: 1, null: false
    t.integer "arc16", limit: 1, null: false
    t.integer "arc17", limit: 1, null: false
    t.integer "arc18", limit: 1, null: false
    t.integer "arc19", limit: 1, null: false
    t.integer "arc20", limit: 1, null: false
    t.integer "mons1", limit: 1, null: false
    t.integer "mons2", limit: 1, null: false
    t.integer "mons3", limit: 1, null: false
    t.integer "mons4", limit: 1, null: false
    t.integer "mons5", limit: 1, null: false
    t.integer "mons6", limit: 1, null: false
    t.integer "mons7", limit: 1, null: false
    t.integer "mons8", limit: 1, null: false
    t.integer "mons9", limit: 1, null: false
    t.integer "mons10", limit: 1, null: false
    t.integer "mons11", limit: 1, null: false
    t.integer "mons12", limit: 1, null: false
    t.integer "mons13", limit: 1, null: false
    t.integer "mons14", limit: 1, null: false
    t.integer "mons15", limit: 1, null: false
    t.integer "mons16", limit: 1, null: false
    t.integer "mons17", limit: 1, null: false
    t.integer "mons18", limit: 1, null: false
    t.integer "mons19", limit: 1, null: false
    t.integer "mons20", limit: 1, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["article_id"], name: "index_decks_on_article_id"
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
  add_foreign_key "decks", "articles"
end
