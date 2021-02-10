require 'faker'

Flat.destroy_all
puts 'Creating 5 fake flats...'
5.times do
  flat = Flat.new(
    name: "Flat in #{Faker::Books::Dune.city}",
    address: Faker::Address.full_address,
    description: Faker::Books::Dune.quote,
    price_per_night: rand(25..200),
    number_of_guests: rand(1..10)
  )
  flat.save!
end
puts 'Finished!'
