
class TicketController < Sinatra::Base

  set :views, "app/views/ticket"
  set :method_override, true

  get "/tickets" do
    @tickets = Ticket.all
    erb :index
  end

  get "/tickets/new" do

    erb :new
  end


  post "/tickets" do
    guest_id = params["guest_id"]
    show_id = params["show_id"]


    @ticket = Ticket.create(guest_id: guest_id, show_id: show_id)

    #redirect to page with list of cities and their shows
    redirect "/tickets"
  end


  get "/tickets/:id" do

     @ticket = Ticket.find(params["id"])
     
    erb :show

  end
  #ad an update feature if user wants to change their name
  get "/tickets/:id/edit" do
    id = params["id"]
    @ticket = Ticket.find(id)
    erb :edit
  end

put "/tickets/:id" do
  id = params["id"]
  @ticket = Ticket.find(id)
  @ticket.destroy
  redirect "/tickets"
end
end
