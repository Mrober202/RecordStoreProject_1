require_relative('../db/sql_runner')
require_relative('./artist')

class Album

  attr_accessor(:id, :artist_id, :title, :genre, :release_year, :stock_level, :cover, :buy_price, :sell_price)

  def initialize(options)
    @id = options['id'].to_i()
    @artist_id = options['artist_id']
    @title = options['title']
    @genre = options['genre']
    @release_year = options['release_year'].to_i()
    @stock_level = options['stock_level'].to_i()
    @cover = options['cover']
    @buy_price = options['buy_price'].to_i()
    @sell_price = options['sell_price'].to_i()

  end

  def save()
    sql = "INSERT INTO albums (artist_id, title, genre, release_year, stock_level, cover, buy_price, sell_price) VALUES (#{@artist_id}, '#{@title}', '#{@genre}', #{@release_year}, #{@stock_level}, '#{@cover}', #{@buy_price}, #{@sell_price}) RETURNING * ;"
    result = SqlRunner.run(sql)
    @id = result.first['id'].to_i() 
  end

  def self.all()
    sql = "SELECT * FROM albums"
    result = SqlRunner.run(sql)
    return result.map {|album| Album.new(album)}
  end

  def self.find(id)
    sql = "SELECT * FROM albums WHERE id = #{id}"
    result = SqlRunner.run(sql)
    return Album.new(result.first)
  end  

  def self.delete_all()
    sql = "DELETE FROM albums ;"
    SqlRunner.run(sql)
  end

  def artist()
    sql = "SELECT * FROM artists WHERE id = #{@artist_id};"
    result = SqlRunner.run(sql)
    artist = result.first()
    artist_data = Artist.new(artist)
    return artist_data
  end

  def stock_level()
    case @stock_level
    when (0..5)
      return "Stock Low"
    when (6..10)
      return "Stock Adequate"
    else
      return "Stock All Good Mate"
    end
  end

  def mark_up()
    profit = @sell_price -= @buy_price
    return profit
  end


end