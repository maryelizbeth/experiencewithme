# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

a = Adventure.create( name: 'Yoga Boat Cruise', city: 'Annapolis, MD', link: "http://www.livingsocial.com/adventures/332358-yoga-boat-cruise")
AdventureDate.create(adventure_id: a.id, date: Date.today.to_s)