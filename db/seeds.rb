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
caves = []
caves << Cave.create(
  address: 'Sahara Dessert',
  square_meters: 100,
  availability: true,
  occupancy: 2,
  price_per_night: 10,
  user_id: users.sample.id
)

caves << Cave.create(
  address: 'Amazon Rainforest',
  square_meters: 100,
  availability: true,
  occupancy: 2,
  price_per_night: 10,
  user_id: users.sample.id
)
caves << Cave.create(
  address: 'Nottingham Forrest',
  square_meters: 100,
  availability: true,
  occupancy: 2,
  price_per_night: 10,
  user_id: users.sample.id
)
caves << Cave.create(
  address: 'Yosemite',
  square_meters: 100,
  availability: true,
  occupancy: 2,
  price_per_night: 10,
  user_id: users.sample.id
)

caves << Cave.create(
  address: 'Grand Canyon',
  square_meters: 100,
  availability: true,
  occupancy: 2,
  price_per_night: 10,
  user_id: users.sample.id
)

caves << Cave.create(
  address: 'North Pole',
  square_meters: 100,
  availability: true,
  occupancy: 2,
  price_per_night: 10,
  user_id: users.sample.id
)


puts "#{Cave.count} caves created"
puts "Creating reservations now"

Reservation.create(
  user_id: users.sample.id,
  cave_id: caves.sample.id,
  start_date: '2019-12-01',
  end_date: '2020-02-01'
  )

Reservation.create(
  user_id: users.sample.id,
  cave_id: caves.sample.id,
  start_date: '2019-12-01',
  end_date: '2020-02-01'
  )

Reservation.create(
  user_id: users.sample.id,
  cave_id: caves.sample.id,
  start_date: '2019-12-01',
  end_date: '2020-02-01'
  )

Reservation.create(
  user_id: users.sample.id,
  cave_id: caves.sample.id,
  start_date: '2019-12-01',
  end_date: '2020-02-01'
  )

Reservation.create(
  user_id: users.sample.id,
  cave_id: caves.sample.id,
  start_date: '2019-12-01',
  end_date: '2020-02-01'
  )

Reservation.create(
  user_id: users.sample.id,
  cave_id: caves.sample.id,
  start_date: '2019-12-01',
  end_date: 'March'
  )

puts "#{Reservation.count} reservations created"
