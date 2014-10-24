# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


u1 = User.create(username: 'Anastasa27', email: 'iheartga@ga.com', password_digest: 'blah')

co1 = Country.create(name: 'France', continent: 'Europe')
co2=  Country.create(name: 'Brazil', continent: 'Europe')

ci1 = City.create(name: 'Paris')
ci2 = City.create(name: 'Brazil')

ci1.country_id = co1.id
ci1.save

ci2.country_id = co2.id
ci2.save

t1 = Trip.create(trip_name: 'Parisian Romp', trip_date: '10/12/14 - 10/20/14', description: 'Twas a beautiful trip. Strolled down the Champs Elysee and ran into my good friend Blair Waldorf, while snarfing some poulet roti. Good times!', fave_memory: 'Facetiming Ade while cruising down the River Seine', photo: 'http://www.pelicancarhire.co.uk/wp-content/uploads/2012/04/Tourist-in-Paris-Eiffel-Tower.jpg')
t2 = Trip.create(trip_name: 'World Cup WOW!', trip_date: '7/20/14 - 8/20/14', description: "Saw Brazil flop and twas grand.", fave_memory: "Watching Germany win it all.", photo: 'http://i.dailymail.co.uk/i/pix/2014/06/13/article-2656969-1EB9CBE800000578-524_634x411.jpg')
t1.city_id = ci1.id
t1.save
t1.user_id = u1.id
t1.save
t2.city_id = u1.id
t2.save
t2.user_id = u1.id
t2.save
