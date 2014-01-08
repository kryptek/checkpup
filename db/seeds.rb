require 'faker'

rand(10..30).times do
  p = Dog.create(name: Faker::Lorem.words(rand(1..10)).join(" "), 
    needs: Faker::Lorem.paragraphs(rand(1..4)).join("\n"), 
    breed: Faker::Lorem.words(rand(1..10)).join(" "))
end

puts "Seed finished"
puts "#{Dog.count} posts created"
