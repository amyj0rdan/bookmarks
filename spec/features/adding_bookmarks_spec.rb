feature 'can add a bookmark' do
  scenario 'user adds a new bookmark' do
    visit('/bookmarks/add')
    fill_in 'url', with: 'http://makers.tech/'
    click_button('Add')
    expect(page).to have_content 'http://makers.tech/'
  end
end
