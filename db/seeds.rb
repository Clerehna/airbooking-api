# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Nettoyage de la DB 🧹'

Booking.delete_all
Reservation.delete_all
Mission.delete_all
Listing.delete_all

puts 'Creation de room 🔲'

Listing.create!(num_room: 2)
Listing.create!(num_room: 1)
Listing.create!(num_room: 3)

puts 'Creation de booking 📆'

Booking.create!(listing_id: Listing.first.id, start_date: "2016-10-10".to_date, end_date: "2016-10-15".to_date)
Booking.create!(listing_id: Listing.first.id, start_date: "2016-10-16".to_date, end_date: "2016-10-20".to_date)
Booking.create!(listing_id: Listing.second.id, start_date: "2016-10-15".to_date, end_date: "2016-10-20".to_date)

puts 'Creation de reservation 🗓'

Reservation.create!(listing_id: Listing.first.id, start_date: "2016-10-11".to_date, end_date: "2016-10-13".to_date)
Reservation.create!(listing_id: Listing.first.id, start_date: "2016-10-13".to_date, end_date: "2016-10-15".to_date)
Reservation.create!(listing_id: Listing.first.id, start_date: "2016-10-16".to_date, end_date: "2016-10-20".to_date)
Reservation.create!(listing_id: Listing.second.id, start_date: "2016-10-15".to_date, end_date: "2016-10-18".to_date)
