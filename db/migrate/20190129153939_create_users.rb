class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :bank_account
      t.integer :stock_account
      t.string :username
      t.string :password_digest

      t.timestamps
    end
  end
end
