feature 'Bookmark page' do
  scenario 'Shows add bookmark button' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://testbookmark.com')
    fill_in('title', with: 'Test Bookmark')
    click_button('Add Bookmark')
    expect(page).to have_content 'http://testbookmark.com'
  end
end
