feature 'view bookmarks' do
  scenario 'user visits /bookmarks and can see their bookmarks' do
    Bookmark.create('http://www.makersacademy.com', 'Makers')
    Bookmark.create('http://www.google.com', 'Google')
    Bookmark.create('http://www.destroyallsoftware.com', 'Destroy')

    visit('/bookmarks')
    expect(page).to have_content("http://www.makersacademy.com")
    expect(page).to have_content("http://www.google.com")
    expect(page).to have_content("http://www.destroyallsoftware.com")
  end
end
