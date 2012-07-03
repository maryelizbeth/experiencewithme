# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Adventure.create(
  [ 
    {
      name: 'Yoga Boat Cruise', 
      city: 'Annapolis, MD', 
      link: "http://www.livingsocial.com/adventures/332358-yoga-boat-cruise",
      adventure_date: '2012-07-21'
    },

    { 
      name: 'The Circus Experience: Flying Trapeze + Acrobatics + Juggling', 
      city: 'Washington, DC', 
      link:  "http://livingsocial.com/adventures/345822-the-circus-experience",
      adventure_date: '2012-07-08'
    },

    {
      name: 'Mid-Atlantic Spartan Race Obstacle Run',
      city: 'Leesburg, VA',
      link: 'http://www.livingsocial.com/adventures/369880-spartan-race-obstacle-run',
      adventure_date: '2012-08-26'
    },
    {
      name: 'Surfing Lesson + Beach Yoga',
      city: 'Averne, NY',
      link: 'http://www.livingsocial.com/adventures/369054-surfing-lesson-beach-yoga',
      adventure_date: '2012-08-04'
    },
    {
      name: '21+ Labor Day Weekend Adventures Summer Camp',
      city: 'Starruca, PA',
      link: 'http://www.livingsocial.com/adventures/364502-labor-day-21-adventures-summer-camp',
      adventure_date: '2012-08-31'
    },
    {
      name: 'Tamale Making + Wine Tasting',
      city: 'San Francisco, CA',
      link: 'http://www.livingsocial.com/adventures/341660-tamale-making-wine-tasting',
      adventure_date: '2012-07-07'
    }
  ]
)    



