require 'pg'

class Link
  def self.all
    list = []
    connection = PG.connect( dbname: 'bookmark_manager')
    output = connection.exec("SELECT * FROM bookmarks;")
    output.each do |link|
      list << link['url']
    end
    list
  end
end
