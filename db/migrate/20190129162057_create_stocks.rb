class CreateStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks do |t|
      t.string :name
      t.string :sector
      t.string :ceo
      t.string :symbol
      t.string :logo
      t.integer :oneYrPrice
      t.integer :openPrice

      t.timestamps
    end
  end
end
