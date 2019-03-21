# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# # Stock.destroy_all
# User.destroy_all
# # Portfoliostock.destroy_all



s1 = Stock.create(openPrice: 200, oneYrPrice: 200, name:"Apple Inc", symbol:"AAPL")
s2 = Stock.create(openPrice: 25, oneYrPrice: 20, name:"Advanced Micro Devices", symbol:"AMD")
#
#
u1 = User.create(bank_account:5000, stock_account:1000, username:"eeee", password:"eeee")
u2 = User.create(bank_account:5000, stock_account:1000, username:"llll", password:"llll")
#
p1 = Portfoliostock.create(win:true,owned: true, user_id: u1, stock_id: s1)
p2 = Portfoliostock.create(win:false,owned: false, user_id: u1, stock_id: s2)

po1 = Portfolio.create(symbol: 'AMD', shares: 1, user_id: u1, stock_id: s2)
po2 = Portfolio.create(symbol: 'AAPL', shares: 2, user_id: u1, stock_id: s1)
