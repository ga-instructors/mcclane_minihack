# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all

User.new(
  email:                 "ann@ga.co",
  name:                  "Ann",
  password:              "ann",
  password_confirmation: "ann"
).save
User.new(
  email:                 "bill@ga.co",
  name:                  "Bill",
  password:              "bill",
  password_confirmation: "bill"
).save
User.new(
  email:                 "sue@ga.co",
  name:                  "Sue",
  password:              "sue",
  password_confirmation: "sue"
).save