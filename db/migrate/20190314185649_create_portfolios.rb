class CreatePortfolios < ActiveRecord::Migration[5.2]
  def change
    create_table :portfolios do |t|
      t.string :symbol
      t.integer :shares
      t.integer :user_id
      t.integer :stock_id
      t.timestamps
    end
  end
end
