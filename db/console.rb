require_relative('../models/artist')
require_relative('../models/album')
require ('pry-byebug')

Album.delete_all
Artist.delete_all

artist1 = Artist.new({
  'name' => 'The Beatles'
  })


artist2 = Artist.new({
  'name' => 'Neil Young'
  })

artist3 = Artist.new({
  'name' => 'Led Zeppellin'
  })

artist4 = Artist.new({
  'name' => 'The Clash'
  })

artist1.save()
artist2.save()
artist3.save()
artist4.save()

album1 = Album.new({
  'artist_id' => artist1.id,
  'title' => 'Revolver',
  'genre' => '60s Rock',
  'release_year' => 1966,
  'stock_level' => 7,
  'cover' => "https://upload.wikimedia.org/wikipedia/en/1/16/Revolver.jpg",
  'buy_price' => 15,
  'sell_price' => 20
  })

album2 = Album.new({
  'artist_id' => artist1.id,
  'title' => 'The Beatles(White Album)',
  'genre' => '60s Rock',
  'release_year' => 1968,
  'stock_level' => 1,
  'cover' => "https://upload.wikimedia.org/wikipedia/commons/2/20/TheBeatles68LP.jpg",
  'buy_price' => 18,
  'sell_price' => 30

  })

album3 = Album.new({
  'artist_id' => artist1.id,
  'title' => 'Sgt. Peppers Lonely Hearts Club Band',
  'genre' => 'Psychedelic',
  'release_year' => 1967,
  'stock_level' => 10,
  'cover' => "http://www.guitarworld.com/sites/default/files/public/sgt-pepper_1.jpg",
  'buy_price' => 12,
  'sell_price' => 16
  })

album4 = Album.new({
  'artist_id' => artist2.id,
  'title' => 'Harvest',
  'genre' => 'Folk',
  'release_year' => 1972,
  'stock_level' => 4,
  'cover' => "https://img.discogs.com/FRu4tSNKwHmOE8nMqi-CE8V7Px4=/fit-in/500x500/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-1044287-1195410194.jpeg.jpg",
  'buy_price' => 25,
  'sell_price' => 35
  })

album5 = Album.new({
  'artist_id' => artist2.id,
  'title' => 'Tonights The Night',
  'genre' => 'Rock',
  'release_year' => 1975,
  'stock_level' => 6,
  'cover' => "http://cdn.pitchfork.com/albums/23400/1156d250.jpg",
  'buy_price' => 15,
  'sell_price' => 24
  })

album6 = Album.new({
  'artist_id' => artist2.id,
  'title' => 'On The Beach',
  'genre' => 'Rock',
  'release_year' => 1974,
  'stock_level' => 8,
  'cover' => "https://i.ytimg.com/vi/tgilCbpCPeA/maxresdefault.jpg",
  'buy_price' => 25,
  'sell_price' => 40
  })

album7 = Album.new({
  'artist_id' => artist3.id,
  'title' => 'III',
  'genre' => 'Classic Rock',
  'release_year' => 1970,
  'stock_level' => 13,
  'cover' => "https://upload.wikimedia.org/wikipedia/en/5/5f/Led_Zeppelin_-_Led_Zeppelin_III.png",
  'buy_price' => 20,
  'sell_price' => 30
  })

album8 = Album.new({
  'artist_id' => artist3.id,
  'title' => 'IV',
  'genre' => 'Classic Rock',
  'release_year' => 1971,
  'stock_level' => 2,
  'cover' => "https://images-na.ssl-images-amazon.com/images/I/61qTE9kINgL.jpg",
  'buy_price' => 15,
  'sell_price' => 20
  })

album9 = Album.new({
  'artist_id' => artist3.id,
  'title' => 'Houses of The Holy',
  'genre' => 'Classic Rock',
  'release_year' => 1973,
  'stock_level' => 9,
  'cover' => "http://www.feelnumb.com/wp-content/uploads/2009/10/led-zeppelin-houses-of-the-holy-censored-cover.jpg",
  'buy_price' => 10,
  'sell_price' => 18
  })

album10 = Album.new({
  'artist_id' => artist4.id,
  'title' => 'Londons Calling',
  'genre' => 'Punk',
  'release_year' => 1979,
  'stock_level' => 10,
  'cover' => "https://upload.wikimedia.org/wikipedia/en/0/00/TheClashLondonCallingalbumcover.jpg",
  'buy_price' => 14,
  'sell_price' => 25
  })

album11 = Album.new({
  'artist_id' => artist4.id,
  'title' => 'The clash',
  'genre' => 'Punk',
  'release_year' => 1977,
  'stock_level' => 4,
  'cover' => "https://upload.wikimedia.org/wikipedia/en/9/9a/The_Clash_UK.jpg",
  'buy_price' => 17,
  'sell_price' => 21
  })

album12 = Album.new({
  'artist_id' => artist4.id,
  'title' => 'Combat Rock',
  'genre' => 'Punk',
  'release_year' => 1982,
  'stock_level' => 16,
  'cover' => "https://upload.wikimedia.org/wikipedia/en/0/07/The_Clash_-_Combat_Rock.jpg",
  'buy_price' => 15,
  'sell_price' => 20
  })

album1.save()
album2.save()
album3.save()
album4.save()
album5.save()
album6.save()
album7.save()
album8.save()
album9.save()
album10.save()
album11.save()
album12.save()

binding.pry()
nil