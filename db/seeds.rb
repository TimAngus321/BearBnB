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
  address: 'jungle',
  square_meters: 100,
  availability: true,
  occupancy: 2,
  price_per_night: 10,
  user_id: users.sample.id
)

caves << Cave.create(
  address: 'forrest',
  square_meters: 100,
  availability: true,
  occupancy: 2,
  price_per_night: 10,
  user_id: users.sample.id
)
caves << Cave.create(
  address: 'marsh',
  square_meters: 100,
  availability: true,
  occupancy: 2,
  price_per_night: 10,
  user_id: users.sample.id
)
caves << Cave.create(
  address: 'underwater',
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
  start_date: 'November',
  end_date: 'February'
  )

Reservation.create(
  user_id: users.sample.id,
  cave_id: caves.sample.id,
  start_date: 'January',
  end_date: 'March'
  )

Reservation.create(
  user_id: users.sample.id,
  cave_id: caves.sample.id,
  start_date: 'December',
  end_date: 'March'
  )

Reservation.create(
  user_id: users.sample.id,
  cave_id: caves.sample.id,
  start_date: 'October',
  end_date: 'January'
  )

Reservation.create(
  user_id: users.sample.id,
  cave_id: caves.sample.id,
  start_date: 'September',
  end_date: 'December'
  )

Reservation.create(
  user_id: users.sample.id,
  cave_id: caves.sample.id,
  start_date: 'October',
  end_date: 'March'
  )

puts "#{Reservation.count} reservations created"
