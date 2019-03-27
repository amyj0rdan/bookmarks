feature 'view bookmarks' do
  scenario 'user visits /bookmarks and can see their bookmarks' do
    Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers')
    Bookmark.create(url: 'http://www.google.com', title: 'Google')
    Bookmark.create(url: 'http://www.destroyallsoftware.com', title: 'Destroy')

    visit('/bookmarks')
    expect(page).to have_link('Makers', href: 'http://www.makersacademy.com')
    expect(page).to have_link('Google', href: 'http://www.google.com')
    expect(page).to have_link('Destroy', href: 'http://www.destroyallsoftware.com')
  end
end
