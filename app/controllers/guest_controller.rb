
class GuestController < Sinatra::Base

  set :views, "app/views/guest"
  get "/guests" do
    @guests = Guest.all
    erb :index
  end

  get "/guests/new" do

    erb :new
  end

  post "/guests" do
    name = params["name"]
    @guest = Guest.create(name: name)
    #redirect to page with list of cities and their shows

  end


  get "/guests/:id" do
  
     @guest = Guest.find(params["id"])

    erb :show

  end
  #ad an update feature if user wants to change their name
  get "/guests/:id/edit" do
    id = params["id"]
    @guests = Guest.find(id)
    erb :edit
  end

put "/guests/:id" do
  id = params["id"]
  @guest = Guest.find(id)
  @guest.destroy
  redirect "/guests"
end
end
