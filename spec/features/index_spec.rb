feature 'Index page' do
  scenario 'Shows homepage' do
    visit('/')
    expect(page).to have_content 'Welcome to bookmark manager'
  end
end
