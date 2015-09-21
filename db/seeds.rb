# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  User.delete_all

  User.create(first_name: "Linda", last_name: "Q", email: "lindaq@ericsson.com", headline: "Technical Writer", location: "Duluth, GA")
  User.create(first_name: "David", last_name: "Peterson", email: "dp@gmail.com", headline: "Software Engineer", location: "New York, NY")
  User.create(first_name: "Jimmy", last_name: "Neutron", location: "Outer Space", email: "jimster@neutron.edu")
  User.create(first_name: "Teresa", last_name: "Hu", email: "thu@gmail.com", headline: "Web Developer", location: "Atlanta, GA", url: "teresahu.com", linkedin: "linkedin.com/in/teresahu", github: "github.com/teresahu", skype: "teresaxwho", hangouts: "teresaxwho@gmail.com")
  User.create(first_name: "Pico", last_name: "G.", email: "senorpicodegalls@gmail.com", headline: "Cute pup", location: "In your heart")
