class ShowController < Sinatra::Base
  set :views, "app/views/show"
  

  get '/shows' do
    @shows = Show.all
    erb :index
  end


  get '/shows/new' do
    erb :new
  end

  get '/shows/:id' do
    @show = Show.find(params["id"])

    erb :show
  end
end

#
# @guest = Guest.find(params["id"])
#
# erb :show
