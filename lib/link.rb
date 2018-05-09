require 'pg'
require 'uri'

class Link
  if ENV['RACK_ENV'] == 'test'
    database = 'bookmark_manager_test'
  else
    database = 'bookmark_manager'
  end

  @connection = PG.connect( dbname: database)

  def self.all
    list = []
    @connection.exec("SELECT * FROM bookmarks;").each { |link| list << link['url'] }
    list
  end

  def self.add(link)
    valid_link_check(link)
    @connection.exec("INSERT INTO bookmarks VALUES(DEFAULT, '#{link}')")
  end

  private

  def self.valid_link_check(link)
    uri = URI.parse(link)
    raise 'URL not valid' if uri.scheme != 'http'
  end
end
