require "faker"

puts 'Cleaning database...'
Pokemon.destroy_all
User.destroy_all

puts 'Creating Pokemon...'


50.times do
  @pokemon = Pokemon.create!({
    name: Faker::Games::Pokemon.name,
    hp: rand(100..200),
    kind_of: ["bug", "dark", "dragon", "electric", "fairy", "fighting", "fire", "flying", "ghost", "grass", "ground", "ice", "water", "steel", "rock", "psychic", "poison", "normal"].sample,
    attack_name: Faker::Games::Pokemon.move,
    attack_value: rand(1..35),
    region: Faker::Games::Pokemon.location,
    energy: rand(1..10)
  })
end

puts 'Creating Users...'


10.times do
  @user = User.create! ({
    email: Faker::Internet.email,
    username: Faker::Internet.username,
    password: "123123",
    pokeball: rand(1..10),
    energy: rand(1..5)
  })
end


puts 'Finished!'
