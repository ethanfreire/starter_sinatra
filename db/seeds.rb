Guest.destroy_all
Show.destroy_all
Ticket.destroy_all

guest1 = Guest.create(name: "Peter")
guest2 = Guest.create(name: "Steven")
guest3 = Guest.create(name: "David")
guest4 = Guest.create(name: "Daphney")
guest5 = Guest.create(name: "Rob")
guest6 = Guest.create(name: "Sean")
guest7 = Guest.create(name: "Joseph")
guest8 = Guest.create(name: "Sanuun")
guest9 = Guest.create(name: "Ethan")
guest10 = Guest.create(name: "Kieth")

show1 = Show.create(name: "Company", city: "New York City")
show2 = Show.create(name: "Anyone can whistle", city: "Miami")
show3 = Show.create(name: "Evening Primrose", city: "Boston")
show4 = Show.create(name: "Passions", city: "Los Angeles")
show5 = Show.create(name: "West Side Story", city: "Washington, DC")
show6 = Show.create(name: "Merrily We Roll Along", city: "San Fransico")
show7 = Show.create(name: "Into The Woods", city: "Chicago")
show8 = Show.create(name: "A liitle night music", city: "London")
show9 = Show.create(name: "Sunday in the park with George", city: "Philedelphia")
show10 = Show.create(name: "A funny thing happen on the way to the forum", city: "Baltimore")

ticket1 = Ticket.create(guest_id: guest1.id, show_id: show1.id)
ticket2 = Ticket.create(guest_id: guest7.id, show_id: show8.id)
ticket3 = Ticket.create(guest_id: guest9.id, show_id: show6.id)
