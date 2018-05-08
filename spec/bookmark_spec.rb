require 'bookmark'

describe Bookmark do
  describe '#all' do
    it 'should return all bookmarks' do
      bookmarks = Bookmark.all
      expect(bookmarks).to include("http://makersacademy.com")
      expect(bookmarks).to include("http://google.com")
      expect(bookmarks).to include("http://destroyallsoftware.com")
    end
  end
end
