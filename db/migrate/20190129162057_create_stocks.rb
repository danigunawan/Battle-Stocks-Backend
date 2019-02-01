class CreateStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks do |t|
      t.integer :year_open_price
      t.integer :today_open_price
      t.string :name
      t.string :sector
      t.string :ceo
      t.string :symbol
      t.string :logo

      t.timestamps
    end
  end
end
