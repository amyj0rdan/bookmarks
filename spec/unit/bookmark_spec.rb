require './lib/bookmark'

describe Bookmark do

  it 'returns a list of URLs' do
    bookmarks = Bookmark.all
    expect(bookmarks).to include("https://www.google.com")
    expect(bookmarks).to include("https://makers.tech/")
  end

end

