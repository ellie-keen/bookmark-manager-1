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
    @connection.exec("SELECT * FROM bookmarks;").map { |link| { link['title'] => link['url'] } }
  end

  def self.add(title, link)
    return false unless valid_link_check(link)
    @connection.exec("INSERT INTO bookmarks VALUES(DEFAULT, '#{link}', '#{title}')")
  end

  private

  def self.valid_link_check(link)
    link =~ URI::regexp
  end
end
