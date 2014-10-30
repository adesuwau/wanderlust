# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


u1 = User.create(username: 'Anastasa27', email: 'iheartga@ga.com', fave_travel_quote: '"I haven\'t been everywhere, but its on my list." - Susan Sontag', password: 'blah')
u2 = User.create(username: 'robertyu', email: 'sblatt@ga.co', fave_travel_quote: '"Life is an adventure. Dare it." - Mother Theresa', password: 'ade')


t1 = Trip.create(trip_name: 'Parisian Romp', trip_date: '10/12/14 - 10/20/14', description: 'Twas a beautiful trip. Strolled down the Champs Elysee and ran into my good friend Blair Waldorf, while snarfing some poulet roti. Good times!', fave_memory: 'Facetiming Ade while cruising down the River Seine', photo: 'http://www.pelicancarhire.co.uk/wp-content/uploads/2012/04/Tourist-in-Paris-Eiffel-Tower.jpg', country_name: 'France', city_name: 'Paris')
t2 = Trip.create(trip_name: 'World Cup WOW!', trip_date: '7/20/14 - 8/20/14', description: "Saw Brazil flop and twas grand.", fave_memory: "Watching Germany win it all.", photo: 'http://i.dailymail.co.uk/i/pix/2014/06/13/article-2656969-1EB9CBE800000578-524_634x411.jpg', country_name: 'Brazil', city_name: 'Rio de Janeiro')
t3 = Trip.create(trip_name: 'Totally Thailand', trip_date: '11/12/13 - 11/20/13', description: 'Loren Ipsum Blah Blah blah', fave_memory: 'RANDOM RANDOM RANDOM', photo: 'http://resouce.zdtrip.com/images/Travels/20140715102827_Front.jpg', country_name: 'Thailand', city_name: 'Phuket')
t4 = Trip.create(trip_name: 'Making Waves in Morocco', trip_date: '1/2/14 - 1/10/14', description: 'Loren Ipsum Blah Blah', fave_memory: 'Random random random', photo: 'http://www.bikehike.com/files/styles/destination-list-view/public/destination/Morocco-Adventure-Travel_0.jpg', country_name: 'Morocco', city_name: 'Marrakesh')

t1.user_id = u1.id
t1.save


t2.user_id = u1.id
t2.save


t3.user_id = u2.id
t3.save

t4.user_id = u2.id
t4.save


w1 = Wishlist.create(country_name: 'South Africa', city_name: 'Capetown', tentative_dates: 'New Years 2015')
w2 = Wishlist.create(country_name: 'Russia', city_name: 'Moscow', tentative_dates: 'Christmas 2016')

w1.user_id = u1.id
w1.save
w2.user_id = u1.id
w2.save
