feature 'view bookmarks' do
  scenario 'user visits /bookmarks and can see their bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content('https://www.google.com', 'https://makers.tech/')
  end
end
