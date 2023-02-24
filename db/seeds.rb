require 'faker'

puts 'Cleaning Database...'
Restaurant.destroy_all

puts 'Creating restaurants...'

50.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    rating: rand(1..5),
    chef_name: Faker::Name.name
  )

  5.times do
    Review.create!(
      restaurant:,
      content: Faker::Restaurant.review
    )
  end
end

puts 'Seeds done!'
