class CreateStockgames < ActiveRecord::Migration[5.2]
  def change
    create_table :stockgames do |t|
      t.integer :stock_id
      t.integer :game_id

      t.timestamps
    end
  end
end
