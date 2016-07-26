# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([

  {email:"email@gmail.com", password: "password", first_name:"Mario", last_name:"Mario", img_url:"photo here", gender:"Male", description:"Im a code cathode."},

  {email:"email@aim.com", password: "password", first_name:"Luigi", last_name:"Mario", img_url:"photo here", gender:"Male", description:"I love c++ and c# and hope to meet others to pair up and work together with"},

  {email:"email@yahoo.com", password: "password", first_name:"Princess", last_name:"Peach", img_url:"photo here", gender:"female", description:"I have been coding for four years now and am looking for a coding partner."}

  ])

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

codealongs = Codealong.create([

  {location:"Santa Monica", date: DateTime.new(2016,04,26,07,00,00), description: "This is a codealong for JavaScript!", language: Language.find_by(name: "JavaScript")},

  {location:"Fontana", date: DateTime.new(2016,04,20,07,00,00), description: "This is another codealong for JavaScript", language: Language.find_by(name: "JavaScript")},

  {location:"Rancho Cucamonga", date: DateTime.new(2016,05,05,07,00,00), description: "This is a boring codealong for JavaScript", language: Language.find_by(name: "JavaScript")},

  {location:"Santa Monica", date: DateTime.new(2016,04,21,07,00,00), description: "This is a codealong for ruby", language: Language.find_by(name: "Ruby")},

  {location:"Fontana", date: DateTime.new(2016,03,12,07,00,00), description: "This is another codealong for ruby", language: Language.find_by(name: "Ruby")},

  {location:"Rancho Cucamonga", date: DateTime.new(2016,04,20,07,00,00), description: "This is a silly hat themed codealong for ruby", language: Language.find_by(name: "Ruby")},

  {location:"Santa Monica", date: DateTime.new(2016,04,20,07,00,00), description: "This is a whites only codealong for Java", language: Language.find_by(name: "Java")},

  {location:"Fontana", date: DateTime.new(2016,04,20,07,00,00), description: "This is a fun codealong for Java", language: Language.find_by(name: "Java")},

  {location:"Rancho Cucamonga", date: DateTime.new(2016,04,20,07,00,00), description: "This is a regular themed codealong for Java", language: Language.find_by(name: "Java")}

  ])

messages = Message.create([

  {content:"I cannot wait to meet people who are also interested in what I am"},

  ])
