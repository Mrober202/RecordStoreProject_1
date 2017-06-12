require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/artist')

get '/artist' do
  @artists = Artist.all()
  erb (:"artists/index")
end

get '/artist/new' do
  @artists = Artist.all()
  erb(:"artists/new")
end

post '/artist' do
  @artists = Artist.new(params)
  @artists.save
  erb(:"artist/create")
end

