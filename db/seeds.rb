# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Codealong.destroy_all
Language.destroy_all
User.destroy_all
Message.destroy_all
Snippet.destroy_all

user1 = User.create({email:"email@gmail.com", password: "password", first_name:"Mario", last_name:"Mario", img_url:"photo here", gender:"Male", description:"Im a code cathode."})

user2 = User.create({email:"new_email@gmail.com", password: "password", first_name:"Mario", last_name:"Mario", img_url:"photo here", gender:"Male", description:"Im a code cathode."})

user3 = User.create({email:"email@aim.com", password: "password", first_name:"Luigi", last_name:"Mario", img_url:"photo here", gender:"Male", description:"I love c++ and c# and hope to meet others to pair up and work together with"})

user4 = User.create({email:"email@yahoo.com", password: "password", first_name:"Princess", last_name:"Peach", img_url:"photo here", gender:"female", description:"I have been coding for four years now and am looking for a coding partner."})

languages = Language.create([

  {name:"JavaScript"},

  {name:"Ruby"},

  {name:"Java"}
  ])

snippets = Snippet.create([

  {content:"some Java code snippet to prove im awesome here", language: Language.find_by(name: "Java")},

  {content:"some more JavaScript code snippet to prove im awesome here", language: Language.find_by(name: "Javascript")},

  {content:"some more code snippet to prove im awesome here", language: Language.find_by(name: "Ruby")}

  ])

codealong1 = Codealong.create({location:"Santa Monica", date: DateTime.new(2016,04,26,07,00,00), description: "This is a codealong for JavaScript!", language: Language.find_by(name: "JavaScript")})

codealong2 = Codealong.create({location:"Fontana", date: DateTime.new(2016,04,20,07,00,00), description: "This is another codealong for JavaScript", language: Language.find_by(name: "JavaScript")})

codealong3 = Codealong.create({location:"Rancho Cucamonga", date: DateTime.new(2016,05,05,07,00,00), description: "This is a boring codealong for JavaScript", language: Language.find_by(name: "JavaScript")})

codealong4 = Codealong.create({location:"Santa Monica", date: DateTime.new(2016,04,21,07,00,00), description: "This is a codealong for ruby", language: Language.find_by(name: "Ruby")})

codealong5 = Codealong.create({location:"Fontana", date: DateTime.new(2016,03,12,07,00,00), description: "This is another codealong for ruby", language: Language.find_by(name: "Ruby")})

codealong6 = Codealong.create({location:"Rancho Cucamonga", date: DateTime.new(2016,04,20,07,00,00), description: "This is a silly hat themed codealong for ruby", language: Language.find_by(name: "Ruby")})

codealong7 = Codealong.create({location:"Santa Monica", date: DateTime.new(2016,04,20,07,00,00), description: "This is a whites only codealong for Java", language: Language.find_by(name: "Java")})

codealong8 = Codealong.create({location:"Fontana", date: DateTime.new(2016,04,20,07,00,00), description: "This is a fun codealong for Java", language: Language.find_by(name: "Java")})

codealong9 = Codealong.create({location:"Rancho Cucamonga", date: DateTime.new(2016,04,20,07,00,00), description: "This is a regular themed codealong for Java", language: Language.find_by(name: "Java")})

user1.codealongs << codealong1
user1.codealongs << codealong2
user2.codealongs << codealong3
user2.codealongs << codealong4
user3.codealongs << codealong5
user3.codealongs << codealong6
user4.codealongs << codealong7
user4.codealongs << codealong8
user1.codealongs << codealong9

messages = Message.create([

  {content:"I cannot wait to meet people who are also interested in what I am"},

  ])
