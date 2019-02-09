class CreatePortfoliostocks < ActiveRecord::Migration[5.2]
  def change
    create_table :portfoliostocks do |t|
      t.integer :user_id
      t.integer :stock_id

      t.timestamps
    end
  end
end
