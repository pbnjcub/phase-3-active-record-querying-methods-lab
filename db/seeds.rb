puts "Seeding shows..."

# run a loop 50 times
50.times do
  # create a game with random data
  Show.create(
    name: Faker::TvShows.title,
    network: Faker::Food.ingredient,
    day: ('a'..'z').to_a.shuffle.join,
    rating: rand(0..10),
    season: rand(0..10)
  )
end

puts "Done seeding!"
