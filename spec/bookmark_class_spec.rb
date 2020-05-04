require 'bookmark'

describe Bookmark do

  describe '#all' do
    it 'shows all saved bookmarks' do
      bookmarks = Bookmark.all
      expect(bookmarks).to include("http://www.makersacademy.com")
      expect(bookmarks).to include("http://www.google.com")
    end
  end
  
end
