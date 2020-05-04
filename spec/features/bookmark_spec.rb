feature 'view bookmark' do
  scenario 'shows all bookmarks' do
    visit('/')
    click_button('View bookmarks')
    expect(page).to have_content "Bookmarks"
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.google.com"
  end
end
