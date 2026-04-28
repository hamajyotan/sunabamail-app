ActiveRecord::Schema[7.1].define(version: 1) do
  create_table "sunabamail_messages", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.text "encoded", null: false
    t.datetime "updated_at", null: false
  end
end
