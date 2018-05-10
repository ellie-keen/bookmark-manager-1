require 'sinatra/base'
require 'sinatra/flash'
require './lib/link.rb'

class BookmarkManager < Sinatra::Base
  enable :sessions
  register Sinatra::Flash

  before do
    @bookmarks = Link.all
    @message = flash[:message]
  end

  get '/bookmarks' do
    erb :bookmarks
  end

  get '/add_bookmark' do
    erb :add_bookmark
  end

  post '/add_to_database' do
    unless Link.add(params[:url_field])
      flash[:message] = 'Error. Link invalid - not added to database.'
    end

    redirect '/bookmarks'
  end

  run! if app_file == $0
end
