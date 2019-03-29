require 'add_bookmark_helper'

feature 'Delete a bookmark' do
  scenario 'user clicks on delete button and the link is removed' do
    add_bookmark

    visit('/bookmarks')

    first('.bookmark').click_button('Delete')
    expect(page).not_to have_link('Makers', href: 'http://makers.tech/')
  end
end
