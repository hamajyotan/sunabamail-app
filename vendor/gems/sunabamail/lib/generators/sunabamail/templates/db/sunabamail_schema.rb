ActiveRecord::Schema[7.1].define(version: 1) do
  create_table "sunabamail_message_raws", id: :bigint, force: :cascade do |t|
    t.datetime "created_at", null: false
    t.text "encoded", null: false
    t.bigint "sunabamail_message_id", null: false
    t.datetime "updated_at", null: false
    t.index ["sunabamail_message_id"], name: "index_sunabamail_message_raws_on_sunabamail_message_id", unique: true
  end

  create_table "sunabamail_messages", id: :bigint, force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "sender", null: false
    t.string "subject"
    t.datetime "updated_at", null: false
  end

  add_foreign_key "sunabamail_message_raws", "sunabamail_messages"
end
