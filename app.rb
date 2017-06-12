require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/album')
require_relative('./models/artist')
require_relative('controllers/album_controller')
require_relative('controllers/artist_controller')


get '/' do
   erb(:index)
  end

