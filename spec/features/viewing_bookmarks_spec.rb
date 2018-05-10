feature 'Viewing bookmark' do
  scenario 'Page loads correctly' do
    visit '/bookmarks'
    expect(page).to have_css('body')
  end

  scenario 'Bookmarks page displays bookmakrs' do
    add_bookmarks

    visit '/bookmarks'

    expect(page).to have_content('Google')
    click_on 'Google'
    expect(current_url).to eq 'http://google.com/'
  end
end
