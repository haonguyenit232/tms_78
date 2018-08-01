User.create! name:  "Trainee232", email: "training232@gmail.com", password: "123456",
  password_confirmation: "123456", role: 0
User.create! name: "Supervisor232", email: "supervisor232@gmail.com",
  password: "123456", password_confirmation: "123456", role: 1
User.create! name: "Admin232", email: "admin232@gmail.com", password: "123456",
  password_confirmation: "123456", role: 2

50.times do
  name = Faker::Name.title
  description = Faker::Hacker.say_something_smart
  start_date = "2018-10-17"
  end_date = "2018-12-17"
  Course.create name: name, description: description, start_date: start_date,
    end_date: end_date
end

10.times do |n|
  name  = Faker::Name.name
  email = "trainee-#{n+1}@trainee.com"
  password = "123456"
  User.create!(name:  name, email: email, password: password,
    password_confirmation: password, role: 0)
end

5.times do |n|
  name  = Faker::Name.name
  email = "supervisor-#{n+1}@super.com"
  password = "123456"
  User.create!(name:  name, email: email, password: password,
    password_confirmation: password, role: 1)
end

3.times do |n|
  name  = Faker::Name.name
  email = "admin-#{n+1}@admin.com"
  password = "123456"
  User.create!(name:  name, email: email, password: password,
    password_confirmation: password, role: 2)
end
