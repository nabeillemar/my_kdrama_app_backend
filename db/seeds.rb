# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


action = Category.create(name: "Action")
romance = Category.create(name: "Drama")
gender_reversal = Category.create(name: "Gender Reversal")
historical = Category.create(name: "Saguk (Historical)")
time_travel = Category.create(name: "Time Travel")
horror = Category.create(name: "Horror")
professional = Category.create(name: "Professional")
fantasy = Category.create(name: "Fantasy")
family = Category.create(name: "Family")
coming_of_age = Category.create(name: "Coming of Age")
web = Category.create(name: "Web")
melodrama = Category.create(name: "Melodrama")
thriller = Category.create(name: "Thriller")
lgbtq = Category.create(name: "LGBTQ+")


KDrama.create(title: "It's Okay to Not Be Okay", release_year: 2020, watched: "Yes", where_to_watch: "Netflix", cover_photo: "https://m.media-amazon.com/images/M/MV5BYTk0Nzk5ZWYtYTNlZi00YjBjLWJhYjctMWMwMmYyMDA5ZjJmXkEyXkFqcGdeQXVyNDY5MjMyNTg@._V1_.jpg", 
    my_rating: 10, comment: "Love the show, so many twists I was glued to the tv.", category_id: melodrama.id)
