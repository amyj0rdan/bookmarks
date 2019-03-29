def add_bookmark
  visit('/bookmarks/add')
  fill_in 'url', with: 'http://makers.tech/'
  fill_in 'title', with: 'Makers'
  click_button('Add')
end
