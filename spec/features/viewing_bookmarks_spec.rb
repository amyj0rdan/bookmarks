xfeature 'view bookmarks' do
  scenario 'user visits /bookmarks and can see their bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content("http://www.makersacademy.com")
    expect(page).to have_content("http://www.google.com")
    expect(page).to have_content("http://www.destroyallsoftware.com")
  end
end
