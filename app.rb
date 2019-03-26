require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end

  get '/bookmarks/add' do
    erb :'bookmarks/add'
  end

  post '/bookmarks' do
    url = params['url']
    title = params['title']
    Bookmark.create(url, title)
    redirect '/bookmarks'
  end

  run! if app_file == $0

end
