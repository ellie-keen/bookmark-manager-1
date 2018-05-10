require 'link'

describe Link do
  let(:all_links) { Link.all }

  describe '#all' do
    it 'Should return all bookmarks' do
      add_bookmarks

      expect(all_links).to include('Makers Academy' => 'http://makersacademy.com')
      expect(all_links).to include('Google' => 'http://google.com')
      expect(all_links).to include('Destroy All Software' => 'http://destroyallsoftware.com')
    end
  end

  describe '#add' do
    let(:bbc_url) { 'http://bbc.co.uk' }
    let(:bbc_name) { 'BBC' }

    it 'Should add a new bookmark' do
      Link.add(bbc_name, bbc_url)
      expect(all_links).to include(bbc_name => bbc_url)
    end
    it "Shouldn't add if URL isn't valid" do
      expect(Link.add('fake title', 'fake link')).to eq false
    end
  end

end
