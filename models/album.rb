require_relative('../db/sql_runner')

class Album

  attr_reader(:id, :artist_id, :title, :genre, :release_year, :stock_level, :cover)

  def initialize(options)
    @id = options['id'].to_i()
    @artist_id = options['artist_id']
    @title = options['title']
    @genre = options['genre']
    @release_year = options['release_year'].to_i()
    @stock_level = options['stock_level']
    @cover = options['cover']
  end

  def save()
    sql = "INSERT INTO albums (artist_id, title, genre, release_year, stock_level, cover) VALUES (#{@artist_id}, '#{@title}', '#{@genre}', #{@release_year}, '#{@stock_level}', '#{@cover}') RETURNING * ;"
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
    sql = "SELECT * FROM artist WHERE id = #{@artist_id};"
    result = SqlRunner.run(sql)
    artist = result.first()
    artist_data = Artist.new(artist)
    return artist_data
  end


end