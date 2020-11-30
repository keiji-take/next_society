class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.string :title, null: false
      t.integer :occupation, null: false
      t.text :boast, null: false
      t.timestamps
    end
  end
end
