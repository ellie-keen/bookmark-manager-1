require 'pg'

class Link
  def self.all
    if ENV['RACK_ENV'] == 'test'
      database = 'bookmark_manager_test'
    else
      database = 'bookmark_manager'
    end

    list = []
    connection = PG.connect( dbname: database)
    connection.exec("SELECT * FROM bookmarks;").each { |link| list << link['url'] }
    list
  end
end
