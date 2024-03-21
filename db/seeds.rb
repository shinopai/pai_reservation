# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# 講師テストデータ
# 20.times do
#   Tutor.create({
#     name: Faker::Name.name,
#     email: Faker::Internet.unique.email,
#     password: 'password'
#   })
# end

# 生徒テストデータ
100.times do
  Student.create({
    name: Faker::Name.name,
    email: Faker::Internet.unique.email,
    password: 'password'
  })
end
