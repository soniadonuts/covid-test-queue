# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seeding..."

User.create([{ name: 'Admin' ,  surname: '-' ,  gender: 'Other',  dob: '2023-05-29', citizen_id: '0000000000001', address: 'donuts', contact_number: '0990900909', user_role: 1, password_digest: '$2a$12$R6hBMvT.L7a2C23P/pwNoeotwqNcNQJ.L5HcOSQUxZljxyL.uN/B.'}])

puts "Seeding done."