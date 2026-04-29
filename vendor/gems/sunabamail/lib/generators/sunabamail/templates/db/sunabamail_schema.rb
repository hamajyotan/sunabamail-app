ActiveRecord::Schema[7.1].define(version: 1) do
  create_table "sunabamail_message_raws", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.text "encoded", null: false
    t.bigint "message_id", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sunabamail_messages", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "sender", null: false
    t.string "subject", null: true
    t.datetime "updated_at", null: false
  end
end
