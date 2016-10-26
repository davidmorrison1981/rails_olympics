# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Athlete.delete_all()
Country.delete_all()
Event.delete_all()
Compete.delete_all()

c1 = Country.create( {country: "kraplakistan"})

a1 = Athlete.create( {name: 'Usain Bolt', country_id: c1.id} )
a2 = Athlete.create( {name: 'Max Whitlock', country_id: c1.id} )

e1 = Event.create({name:"100m egg and spoon race" })

cm1= Compete.create({athlete_id:a1.id, event_id:e1.id, time: 19.45})
cm2= Compete.create({athlete_id:a2.id, event_id:e1.id, time: 19.39})



