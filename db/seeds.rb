@user = User.create(email: "test@test.com", password: "asdfasdf", 
              password_confirmation: "asdfasdf", first_name: "John", last_name: "Snow")
              
puts "1 User created"

AdminUser.create(email: "admin@test.com", password: "asdfasdf", 
              password_confirmation: "asdfasdf", first_name: "Admin", last_name: "Name")
              
puts "1 AdminUser created"

50.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id,
      overtime_request: 2.5)
  
end

puts "50 Posts have been created"






# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
