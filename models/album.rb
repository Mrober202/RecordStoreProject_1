require_relative('../db/sql_runner')

class Album

  attr_reader(:id, :title, :genre, :release_year)

  def initialize(options)
    @id = options['id'].to_i()
    @title = options['title']
    @genre = options['genre']
    @release_year = options['release_year'].to_i()
  end

  def save()
    sql = "INSERT INTO albums (title, genre, release_year) VALUES ('#{@title}', '#{@genre}', #{@release_year}) RETURNING * ;"
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


  end