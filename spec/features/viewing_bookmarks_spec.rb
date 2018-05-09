feature 'viewing bookmark' do
  scenario 'bookmarks page displays bookmakrs' do
    visit '/bookmarks'
    save_and_open_page
    expect(page).to have_content('http://google.com')
    expect(page).to have_content('http://makersacademy.com')
    expect(page).to have_content('http://destroyallsoftware.com')
  end
end
