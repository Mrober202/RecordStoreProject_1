require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/album')

get '/album' do
  @album = Album.all()
  erb (:"album/index")
end