namespace :db do
  desc "Fill database with sample data"

  task populate: :environment do
    admin = User.create!(name: "David",
                         email: "hoodavy@gmail.com",
                         password: "foobar",
                         password_confirmation: "foobar")
    admin.toggle!(:admin)

    99.times do |n|
      name = Faker::Name.name
      email = "example#{n+1}@gmail.com"
      password = "foobar"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end

    users = User.all(limit: 6)
    50.times do
      content = Faker::Lorem.sentence(8)
      users.each { |user| user.tvveets.create!(content: content) }
    end
  end
end