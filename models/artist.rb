require_relative('../db/sql_runner')

class Artist

  attr_accessor(:id, :name)

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO artists (name) VALUES ('#{@name}') RETURNING * ;"
    result = SqlRunner.run(sql)
    @id = result.first['id'].to_i()
  end

  def self.all()
    sql = "SELECT * FROM artists ;"
    result = SqlRunner.run(sql)
    return result.map{|artist| Artist.new(artist)}
  end

  def self.find(id)
    sql = "SELECT * FROM artists WHERE id = #{id} ;"
    result = SqlRunner.run(sql)
    return Artist.new(result.first)
  end  

  def self.delete_all()
    sql "DELETE FROM artists ;"
    SqlRunner.run(sql)
  end

  def album()
    sql = "SELECT * FROM albums WHERE artist_id = #{@id} ;"
    result = SqlRunner.run(sql)
    album = result.map{|album| Album.new(album)}
    return album
  end



end