# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
users = User.create([

  {email:"email@gmail.com", first_name:"Mario", last_name:"Mario", img_url:"photo here", gender:"Male", description:"Im a code cathode."},

  {email:"email@aim.com", first_name:"Luigi", last_name:"Mario", img_url:"photo here", gender:"Male", description:"I love c++ and c# and hope to meet others to pair up and work together with"},

  {email:"email@yahoo.com", first_name:"Princess", last_name:"Peach", img_url:"photo here", gender:"female", description:"I have been coding for four years now and am looking for a coding partner."}

  ])

languages = Language.create([

  {name:"JavaScript"},

  {name:"Ruby"},

  {name:"Java"}
  ])

snippets = Snippet.create([

  {content:"some code snippet to prove im awesome here"},

  {content:"some more code snippet to prove im awesome here"},

  {content:"some more code snippet to prove im awesome here"}

  ])

codealongs = Codealong.create([

  {location:"Santa Monica", date:2016-04-26, description: "This is a codealong for ruby"},

  {location:"Fontana", date:2016-04-26, description: "This is a codealong for Java"},

  {location:"Rancho Cucamonga", date:2016-04-26, description: "This is a codealong for Java"}

  ])

messages = Message.create([

  {content:"I cannot wait to meet people who are also interested in what I am"},

  ])
