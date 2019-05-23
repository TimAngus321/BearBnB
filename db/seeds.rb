# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Reservation.destroy_all
Cave.destroy_all
User.destroy_all
# create a bunch of bears

# create a bunch of caves and randmly assign a bear to a cave
# since each cave belongs to a bear

# create some fake reservation
puts "creating users now"
users = []
users << User.create(email: 'baloo@bears.com', password: '123456', username: 'Baloo')
users << User.create(email: 'winnie@bears.com', password: '123456', username: 'Winnie')
users << User.create(email: 'paddington@bears.com', password: '123456', username: 'Paddington')
users << User.create(email: 'boris@bears.com', password: '123456', username: 'Boris')
users << User.create(email: 'kungfupanda@bears.com', password: '123456', username: 'Kungfupanda')
users << User.create(email: 'snorlax@bears.com', password: '123456', username: 'Snorlax')
users << User.create(email: 'yogi@bears.com', password: '123456', username: 'Yogi')
users << User.create(email: 'smokey@bears.com', password: '123456', username: 'Smokey')
users << User.create(email: 'bubbles@bears.com', password: '123456', username: 'Bubbles')
users << User.create(email: 'rupert@bears.com', password: '123456', username: 'Rupert')
users << User.create(email: 'gordon@bears.com', password: '123456', username: 'Gordon')
puts "#{User.count} users created"
puts "creating caves now"

c1 = Cave.create(
  address: 'Sahara Dessert',
  square_meters: 100,
  availability: true,
  occupancy: 2,
  price_per_night: 10,
  user_id: users.sample.id,
  description: "For all adventurous Bears who hate the cold and just can't stand the long winter months."
)

c2 = Cave.create(
  address: 'Amazon Rainforest',
  square_meters: 100,
  availability: true,
  occupancy: 2,
  price_per_night: 15,
  user_id: users.sample.id,
  description: "If it's humidity, water and a stunning array of prey you're looking for the Amazon is just for you!"
)

c3 = Cave.create(
  address: 'Nottingham Forrest',
  square_meters: 100,
  availability: true,
  occupancy: 2,
  price_per_night: 5,
  user_id: users.sample.id,
  description: "A quaint forest with plenty of big tall trees to rub up against. Perfect for any Bear who doesn't need something new all the time, but beware! Robin Hood lives there! O.o"
)

c4 = Cave.create(
  address: 'Yosemite',
  square_meters: 100,
  availability: true,
  occupancy: 2,
  price_per_night: 30,
  user_id: users.sample.id,
  description: " If it's the company of other like minded Bears you're looking for Yosemite is just for you! Brown- and Grizzly Bears just next door! Also: The views! The views!"
)

c5 = Cave.create(
  address: 'Grand Canyon',
  square_meters: 100,
  availability: true,
  occupancy: 2,
  price_per_night: 40,
  user_id: users.sample.id,
  description: "For all young, fit and thrill seeking Bears! the Grand Canyon offers a unique challenge for all brave enought to face it..."
)

c6 = Cave.create(
  address: 'North Pole',
  square_meters: 100,
  availability: true,
  occupancy: 2,
  price_per_night: 50,
  user_id: users.sample.id,
  description: "Polar Bears you'll feel right at home! For all others, don't forget! Eat well, stack up on fat and bring a pair of ear muffs!"
)

puts "created caves without images"

c1.remote_photo_url = "https://res.cloudinary.com/beartechnologies/image/upload/v1558607121/BearBnB/breanna-galley-64624-unsplash_aslprr.jpg"
c1.save


c2.remote_photo_url = "https://res.cloudinary.com/beartechnologies/image/upload/v1558606240/BearBnB/vruyr-martirosyan-1176150-unsplash_korizu.jpg"
c2.save

c3.remote_photo_url = "https://res.cloudinary.com/beartechnologies/image/upload/v1558607164/BearBnB/aaron-roth-1366403-unsplash_lprtjw.jpg"
c3.save

c4.remote_photo_url = "https://res.cloudinary.com/beartechnologies/image/upload/v1558607663/BearBnB/cave-desktop-backgrounds-dolomites-1366881_ubyod2.jpg"
c4.save

c5.remote_photo_url = "https://res.cloudinary.com/beartechnologies/image/upload/v1558607291/BearBnB/leon-liu-789117-unsplash_nzpn8t.jpg"
c5.save

c6.remote_photo_url = "https://res.cloudinary.com/beartechnologies/image/upload/v1558607371/BearBnB/heather-shevlin-369454-unsplash_qkokbd.jpg"
c6.save

puts "#{Cave.count} caves created"
puts "Creating reservations now"

Reservation.create(
  user_id: users.sample.id,
  cave_id: Cave.all.sample.id,
  start_date: '2019-12-01',
  end_date: '2020-02-01'
  )

Reservation.create(
  user_id: users.sample.id,
  cave_id: Cave.all.sample.id,
  start_date: '2019-12-01',
  end_date: '2020-02-01'
  )

Reservation.create(
  user_id: users.sample.id,
  cave_id: Cave.all.sample.id,
  start_date: '2019-12-01',
  end_date: '2020-02-01'
  )

Reservation.create(
  user_id: users.sample.id,
  cave_id: Cave.all.sample.id,
  start_date: '2019-12-01',
  end_date: '2020-02-01'
  )

Reservation.create(
  user_id: users.sample.id,
  cave_id: Cave.all.sample.id,
  start_date: '2019-12-01',
  end_date: '2020-02-01'
  )

Reservation.create(
  user_id: users.sample.id,
  cave_id: Cave.all.sample.id,
  start_date: '2019-12-01',
  end_date: '2020-01-23'
  )

puts "#{Reservation.count} reservations created"
