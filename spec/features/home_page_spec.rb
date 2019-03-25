feature 'user sees welcome page' do
  scenario 'user opens website and sees welcome page' do
    visit '/'
    expect(page).to have_content('Welcome to your Bookmark Manager')
  end
end
