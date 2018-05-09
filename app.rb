require 'sinatra/base'
require './lib/link.rb'

class BookmarkManager < Sinatra::Base
  before do
    @bookmarks = Link.all
  end

  get '/bookmarks' do
    erb :bookmarks
  end

  get '/add_bookmark' do
    erb :add_bookmark
  end

  post '/add_to_database' do
    Link.add(params[:url_field])
    redirect '/bookmarks'
  end

  run! if app_file == $0
end
