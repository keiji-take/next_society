class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.text       :content,   null: false
      t.references :room,      null: false, forign_key: true
      t.boolean    :is_user
      t.boolean    :checked
      t.timestamps
    end
  end
end
