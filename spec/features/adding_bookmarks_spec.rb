feature 'can add a bookmark' do
  scenario 'user adds a new bookmark' do
    visit('/bookmarks')
    click_button 'Add bookmark'
    fill_in 'url', with: 'http://makers.tech/'
    fill_in 'title', with: 'Makers'
    click_button('Add')
    expect(page).to have_link('Makers', href: 'http://makers.tech/')
  end
end
