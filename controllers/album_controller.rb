require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/album')


get '/album' do
  @albums = Album.all()
  erb (:"albums/index")
end

get '/album/new' do
  @artists = Artist.all()
  erb(:"albums/new")
end

get '/album/:id' do
  @album = Album.find(params[:id])
  erb(:"albums/show")
  end

post '/album' do
  @album = Album.new(params)
  @album.save()
  erb(:"albums/create")
end