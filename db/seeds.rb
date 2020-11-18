10.times do
  restaurant = Restaurant.new(
    name: Faker::FunnyName.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: "belgian"
  )
  restaurant.save!
end