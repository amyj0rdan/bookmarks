feature 'view bookmarks' do
  scenario 'user visits /bookmarks and can see their bookmarks' do
    Bookmark.create(url: 'http://www.makersacademy.com')
    Bookmark.create(url: 'http://www.google.com')
    Bookmark.create(url: 'http://www.destroyallsoftware.com')
    
    visit('/bookmarks')
    expect(page).to have_content("http://www.makersacademy.com")
    expect(page).to have_content("http://www.google.com")
    expect(page).to have_content("http://www.destroyallsoftware.com")
  end
end
