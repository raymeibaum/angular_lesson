# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Doctor.destroy_all
User.destroy_all
Appointment.destroy_all

Doctor.create(
  name: 'Dr. John Zoidberg',
  specialty: 'Internist',
  accepts_insurance: true,
  photo_url: 'http://i.imgur.com/bZLVEki.jpg'
)

Doctor.create(
  name: 'Dr. Mantis Toboggan',
  specialty: 'Virologist',
  accepts_insurance: false,
  photo_url: 'http://i.imgur.com/NcJp6Yn.jpg'
)

Doctor.create(
  name: 'Dr. Nick Riviera',
  specialty: 'General Practitioner',
  accepts_insurance: false,
  photo_url: 'http://i.imgur.com/aNhTfxP.jpg'
)

Doctor.create(
  name: 'Dr. Leo Spaceman',
  specialty: 'Dentist',
  accepts_insurance: false,
  photo_url: 'http://i.imgur.com/M4eog6f.jpg'
)

Doctor.create(
  name: 'Dr. Tobias Funke',
  specialty: 'Psychoanalyst',
  accepts_insurance: false,
  photo_url: 'http://i.imgur.com/AnE5QDq.jpg'
)

Doctor.create(
  name: 'Dr. Jan Itor',
  specialty: 'Custodian',
  accepts_insurance: false,
  photo_url: 'http://i.imgur.com/vrQVcVC.jpg'
)

10.times do
  User.create(email: Faker::Internet.email, password: Faker::Lorem.word)
end


10.times do
  Appointment.create(
    user: User.order('RANDOM()').first,
    doctor: Doctor.order('RANDOM()').first,
    reason: Faker::Lorem.sentence,
    date: Faker::Date.between(Date.today, 30.days.from_now)
  )
end
