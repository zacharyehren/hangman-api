ActiveRecord::Schema.define(version: 2018_08_30_030720) do

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.integer "wins"
    t.integer "losses"
    t.integer "total_games"
    t.float "average"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
