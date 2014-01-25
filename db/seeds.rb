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

u = User.new(
  name: 'Admin User',
  email: 'admin@checkpup.com', 
  password: 'helloworld', 
  password_confirmation: 'helloworld')
u.skip_confirmation!
u.save
u.update_attribute(:role, 'admin')

u = User.new(
  name: 'Moderator User',
  email: 'moderator@checkpup.com', 
  password: 'helloworld', 
  password_confirmation: 'helloworld')
u.skip_confirmation!
u.save
u.update_attribute(:role, 'moderator')

u = User.new(
  name: 'Member User',
  email: 'member@checkpup.com', 
  password: 'helloworld', 
  password_confirmation: 'helloworld')
u.skip_confirmation!
u.save

puts "Seed finished"
puts "#{User.count} owners created"
puts "#{Dog.count} dogs created"

