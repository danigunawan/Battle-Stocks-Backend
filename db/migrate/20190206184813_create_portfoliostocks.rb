class CreatePortfoliostocks < ActiveRecord::Migration[5.2]
  def change
    create_table :portfoliostocks do |t|
      t.boolean :win
      t.boolean :owned
      t.integer :user_id
      t.integer :stock_id
      t.timestamps
    end
  end
end
