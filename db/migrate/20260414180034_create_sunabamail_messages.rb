class CreateSunabamailMessages < ActiveRecord::Migration[8.1]
  def change
    create_table :sunabamail_messages do |t|
      t.text :encoded, null: false

      t.timestamps
    end
  end
end
