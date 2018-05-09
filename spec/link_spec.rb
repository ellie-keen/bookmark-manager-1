require 'link'

describe Link do
  describe '#all' do
    it 'should return all bookmarks' do
      add_bookmarks
      
      links = Link.all

      expect(links).to include('http://makersacademy.com')
      expect(links).to include('http://google.com')
      expect(links).to include('http://destroyallsoftware.com')
    end
  end
end
