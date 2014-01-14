require 'faker'

rand(4..10).times do
  password = Faker::Lorem.characters(10)
  u = User.new(
    name: Faker::Name.name, 
    email: Faker::Internet.email, 
    password: password, 
    password_confirmation: password)
  u.skip_confirmation!
  u.save

rand(5..12).times do
  p = Dog.create(name: Faker::Lorem.words(rand(1..10)).join(" "), 
    needs: Faker::Lorem.paragraphs(rand(1..4)).join("\n"), 
    breed: Faker::Lorem.words(rand(1..10)).join(" "),
    weight: rand(1..100), age: rand(1..100)) 

end
end

u = User.first
u.skip_reconfirmation!
u.update_attributes(email: 'brittany.jill.martin@gmail.com', password: 'helloworld', password_confirmation: 'helloworld')

puts "Seed finished"
puts "#{User.count} owners created"
puts "#{Dog.count} dogs created"

