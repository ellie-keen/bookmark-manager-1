require 'sinatra/base'
require './lib/link.rb'

class BookmarkManager < Sinatra::Base
  get '/bookmarks' do
    @bookmarks = Link.all
    erb :index
  end

  run! if app_file == $0
end
