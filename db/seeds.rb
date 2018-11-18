# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Book.destroy_all
UserBook.destroy_all
UserReview.destroy_all

users = %w(Robin Greg Brandon Forrest Eva Amelia David Joan Rose Tedd)

users.each do |user|
  User.create(
    name: user,
    bio: Faker::GameOfThrones.quote,
    genres: [Faker::Book.genre, Faker::Book.genre]
  )
end

20.times do
  Book.create(
    title: Faker::Book.title,
    genre: Faker::Book.genre,
    author: Faker::Book.author,
    page_count: rand(100..1000),
    content: Faker::Lorem.paragraph(2),
    url_link: Faker::LoremPixel.image("50x60")
  )
end

15.times do
  UserBook.create(
    user: User.all.sample,
    book: Book.all.sample,
    reader_review: Faker::Friends.quote,
    reader_rating: rand(1..5),
    finished_book: Faker::Date.between(1.year.ago, Date.today)
  )
end


50.times do
  UserReview.create(
    user: User.all.sample,
    book: Book.all.sample,
    content: Faker::GreekPhilosophers.quote,
    rating: rand(1..5)
  )
end
