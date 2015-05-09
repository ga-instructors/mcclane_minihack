# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Excuse.delete_all

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


Excuse.new(
  excuse:                "You need to get to the office right now."
).save
Excuse.new(
  excuse:                "Hey, your mom is looking for you. Can you call me ASAP?"
).save
Excuse.new(
  excuse:                "I need you to call me right now - dad"
).save
Excuse.new(
  excuse:                "CALL ME RIGHT NOW!"
).save
Excuse.new(
  excuse:                "Your dog is in trouble! Where the hell are you?"
).save
Excuse.new(
  excuse:                "This is a special message from the local police department. Your home was broken into. Please return home as soon as possible."
).save