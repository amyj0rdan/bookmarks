require './lib/bookmark'
require 'database_helpers'

describe Bookmark do

  describe '.all' do
    it 'creates a new bookmark' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      bookmark = Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers')
      Bookmark.create(url: 'http://www.google.com', title: 'Google')
      Bookmark.create(url: 'http://www.destroyallsoftware.com', title: 'Destroy')

      bookmarks = Bookmark.all

      expect(bookmarks.length).to eq 3
      expect(bookmarks.first).to be_a Bookmark
      expect(bookmarks.first.id). to eq bookmark.id
      expect(bookmarks.first.title). to eq 'Makers'
      expect(bookmarks.first.url).to eq 'http://www.makersacademy.com'
    end
  end

  describe '#create' do
    it 'creates a new bookmark' do
      bookmark = Bookmark.create(url: 'http://makers.tech', title: 'Makers homepage')
      persisted_data = persisted_data(id: bookmark.id)

      expect(bookmark).to be_a Bookmark
      expect(bookmark.id).to eq persisted_data.first['id']
      expect(bookmark.title).to eq 'Makers homepage'
      expect(bookmark.url).to eq 'http://makers.tech'
    end
  end

  describe '#delete' do
    it 'deletes a old bookmark' do
      bookmark = Bookmark.create(url: 'http://makers.tech', title: 'Makers homepage')
      Bookmark.create(url: 'http://www.google.com', title: 'Google')
      Bookmark.create(url: 'http://www.destroyallsoftware.com', title: 'Destroy')

      expect(Bookmark.all.length).to eq 3
      Bookmark.delete(id: bookmark.id)
      expect(Bookmark.all.length).to eq 2
    end
  end
end
