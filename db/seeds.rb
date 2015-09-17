# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  User.create(first_name: "Linda", last_name: "Q", email: "lindaq@ericsson.com", headline: "Technical Writer", location: "Duluth, GA")
  User.create(first_name: "David", last_name: "Peterson", email: "dp@gmail.com", headline: "Software Engineer", location: "New York, NY")
