require 'bookmark'

describe Bookmark do
  describe '#all' do
    it 'should return all bookmarks' do
      bookmarks = Bookmark.all
      expect(bookmarks).to include("https://makersstudents.slack.com/")
      expect(bookmarks).to include("https://github.com/makersacademy/course")
      expect(bookmarks).to include("https://media1.tenor.com/images/170130993a5ce8d03f29415756393597/tenor.gif?itemid=7963714")
    end
  end
end
