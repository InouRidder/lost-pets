puts "Emptying Database"

Pet.destroy_all

puts "Seeding!"

categories = %w(dog cat snake mouse)

15.times do
  pet = Pet.new(name: Faker::Cat.name, description: Faker::ChuckNorris.fact, category: categories.sample, found_on: Date.today)
  puts "Created #{pet.name}" if pet.save
end
