require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/artist')

get '/artist' do
  @artists = Artist.all()
  erb (:"artists/index")
end

get '/artist/new' do
  erb(:"album/new")
end

