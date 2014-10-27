# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


u1 = User.create(username: 'Anastasa27', email: 'iheartga@ga.com', fave_travel_quote: '"I haven\'t been everywhere, but its on my list." - Susan Sontag', password: 'blah')
u2 = User.create(username: 'robertyu', email: 'sblatt@ga.co', fave_travel_quote: '"Life is an adventure. Dare it." - Mother Theresa', password: 'ade')
co1 = Country.create(name: 'France', continent: 'Europe')
co2 = Country.create(name: 'Brazil', continent: 'Europe')
co3 = Country.create(name: 'Thailand', continent: 'Asia')
co4 = Country.create(name: 'Morocco', continent: 'Africa')

ci1 = City.create(name: 'Paris')
ci2 = City.create(name: 'Brazil')
ci3 = City.create(name: 'Phuket')
ci4 = City.create(name: 'Marrakesh')

ci1.country_id = co1.id
ci1.save

ci2.country_id = co2.id
ci2.save

ci3.country_id = co3.id
ci3.save

ci4.country_id = co4.id
ci4.save

t1 = Trip.create(trip_name: 'Parisian Romp', trip_date: '10/12/14 - 10/20/14', description: 'Twas a beautiful trip. Strolled down the Champs Elysee and ran into my good friend Blair Waldorf, while snarfing some poulet roti. Good times!', fave_memory: 'Facetiming Ade while cruising down the River Seine', photo: 'http://www.pelicancarhire.co.uk/wp-content/uploads/2012/04/Tourist-in-Paris-Eiffel-Tower.jpg')
t2 = Trip.create(trip_name: 'World Cup WOW!', trip_date: '7/20/14 - 8/20/14', description: "Saw Brazil flop and twas grand.", fave_memory: "Watching Germany win it all.", photo: 'http://i.dailymail.co.uk/i/pix/2014/06/13/article-2656969-1EB9CBE800000578-524_634x411.jpg')
t3 = Trip.create(trip_name: 'Totally Thailand', trip_date: '11/12/13 - 11/20/13', description: 'Loren Ipsum Blah Blah blah', fave_memory: 'RANDOM RANDOM RANDOM', photo: 'http://resouce.zdtrip.com/images/Travels/20140715102827_Front.jpg')
t4 = Trip.create(trip_name: 'Making Waves in Morocco', trip_date: '1/2/14 - 1/10/14', description: 'Loren Ipsum Blah Blah', fave_memory: 'Random random random', photo: 'http://www.bikehike.com/files/styles/destination-list-view/public/destination/Morocco-Adventure-Travel_0.jpg')
t1.city_id = ci1.id
t1.save
t1.user_id = u1.id
t1.save
t2.city_id = u1.id
t2.save
t2.user_id = u1.id
t2.save
t3.city_id = ci3.id
t3.save
t3.user_id = u2.id
t3.save
t4.city_id = ci4.id
t4.save
t4.user_id = u2.id
t4.save
