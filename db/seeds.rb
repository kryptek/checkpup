require 'faker'

rand(10..30).times do
  p = Dog.create(name: Faker::Lorem.words(rand(1..10)).join(" "), 
    needs: Faker::Lorem.paragraphs(rand(1..4)).join("\n"), 
    breed: Faker::Lorem.words(rand(1..10)).join(" "),
    weight: rand(1..100), age: rand(1..100)) 
end

puts "Seed finished"
puts "#{Dog.count} dogs created"
