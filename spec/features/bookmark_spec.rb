require 'pg'

feature 'view bookmark' do
  scenario 'shows all bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')
    
# Add the test data
    connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.google.com');")

    visit('/')
    click_button('View bookmarks')
    expect(page).to have_content "Bookmarks"
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.google.com"
  end
end
