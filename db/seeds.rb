puts "Cleaning database..."
Flat.destroy_all

puts "Creating flats..."

one = {
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
}

two = {
  name: 'Luxous house in Poitier',
  address: '11 rue du pommier Poitier',
  description: 'Big house in the heart of the city, 3 bedrooms, a kitchen and a small garden',
  price_per_night: 45,
  number_of_guests: 6
}

three = {
  name: 'My house',
  address: "30 impasse du Laugey Saint-Jean d'Illac",
  description: 'Yo, I leave here',
  price_per_night: 2,
  number_of_guests: 4
}

[one, two, three].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end
puts "Done"
