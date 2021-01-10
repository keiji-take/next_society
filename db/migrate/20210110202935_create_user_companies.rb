class CreateUserCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :user_companies do |t|
      t.references :user,      forign_key: true
      t.references :company,   forign_key: true
      t.timestamps
    end
  end
end
