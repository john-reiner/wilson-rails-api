# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create!(username: "testuser", password: "password", password_confirmation: "password", first_name: "test", last_name: "user")

10.times do |i|
    Goal.create!(
        name: "Goal #{i + 1}",
        user_id: 1
    )
end