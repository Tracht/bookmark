require 'bookmark'

describe Bookmark do

  describe '#all' do
    it 'shows all saved bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      # Add the test data
      bookmark = Bookmark.create(url: "http://www.makersacademy.com", title: "Makers Academy")
      Bookmark.create(url: "http://www.destroyallsoftware.com", title: "Destroy All Software")
      Bookmark.create(url: "http://www.google.com", title: "Google")

      bookmarks = Bookmark.all

      expect(bookmarks).to include("http://www.makersacademy.com")
      expect(bookmarks).to include('http://www.destroyallsoftware.com')
      expect(bookmarks).to include("http://www.google.com")
    end
  end

  describe '.create' do
    it 'creates new bookmark' do
      Bookmark.create(url: 'http://www.testbookmark.com', title: 'Test Bookmark').first

      expect(Bookmark.create['url']).to eq 'http://www.testbookmark.com'
      expect(Bookmark.create['title']).to eq 'Test Bookmark'
    end
  end

end
