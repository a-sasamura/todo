# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  Task.destroy_all
  Category.destroy_all
  Category.create(name: "仕事")
  Category.create(name: "家事")
  Category.create(name: "遊び")

  User.destroy_all
  User.create(name: "a-sasamura", password: "passw0rd", password_confirmation: "passw0rd")
  User.create(name: "snoozer05", password: "passw0rd", password_confirmation: "passw0rd")