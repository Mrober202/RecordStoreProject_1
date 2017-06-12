require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/album')

get '/album' do
  @album = Album.all()
  erb (:"album/index")
end

get '/album/new' do
  @artists = Artist.all()
  erb(:"album/new")
end