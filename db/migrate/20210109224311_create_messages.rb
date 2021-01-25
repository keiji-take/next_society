class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.text :content,        null: false
      t.references :room,     null: false
      t.boolean :is_user,     null: false
      t.boolean :is_company,  null: false
      t.timestamps
    end
  end
end
