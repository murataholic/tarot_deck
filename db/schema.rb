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
    t.integer "genre_id", null: false
    t.text "text", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_articles_on_user_id"
  end

  create_table "decks", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "article_id", null: false
    t.integer "arc1", null: false
    t.integer "arc2", null: false
    t.integer "arc3", null: false
    t.integer "arc4", null: false
    t.integer "arc5", null: false
    t.integer "arc6", null: false
    t.integer "arc7", null: false
    t.integer "arc8", null: false
    t.integer "arc9", null: false
    t.integer "arc10", null: false
    t.integer "arc11", null: false
    t.integer "arc12", null: false
    t.integer "arc13", null: false
    t.integer "arc14", null: false
    t.integer "arc15", null: false
    t.integer "arc16", null: false
    t.integer "arc17", null: false
    t.integer "arc18", null: false
    t.integer "arc19", null: false
    t.integer "arc20", null: false
    t.integer "mons1", null: false
    t.integer "mons2", null: false
    t.integer "mons3", null: false
    t.integer "mons4", null: false
    t.integer "mons5", null: false
    t.integer "mons6", null: false
    t.integer "mons7", null: false
    t.integer "mons8", null: false
    t.integer "mons9", null: false
    t.integer "mons10", null: false
    t.integer "mons11", null: false
    t.integer "mons12", null: false
    t.integer "mons13", null: false
    t.integer "mons14", null: false
    t.integer "mons15", null: false
    t.integer "mons16", null: false
    t.integer "mons17", null: false
    t.integer "mons18", null: false
    t.integer "mons19", null: false
    t.integer "mons20", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["article_id"], name: "index_decks_on_article_id"
    t.index ["user_id"], name: "index_decks_on_user_id"
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
  add_foreign_key "decks", "users"
end
