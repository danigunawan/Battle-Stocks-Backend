# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Stock.destroy_all
User.destroy_all
Portfoliostock.destroy_all
Deadstock.destroy_all




s1 = Stock.create(name:"Apple Inc", symbol:"AAPL")


u1 = User.create(bank_account:5000, username:"eeee", password:"eeee")

p1 = Portfoliostock.create(user_id: u1, stock_id: s1)

d1 = Deadstock.create(user_id:u1, stock_id: s1)
