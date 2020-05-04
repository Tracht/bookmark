feature 'view bookmark' do
  scenario 'shows all bookmarks' do
    visit('/')
    click_button('View bookmarks')
    expect(page).to have_content "Bookmarks"
  end
end
