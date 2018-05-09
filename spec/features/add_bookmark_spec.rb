feature 'Adding a bookmark' do
  let(:bbc_link) { 'http://bbc.co.uk' }

  scenario 'Add bookmark link visible' do
    visit '/bookmarks'

    expect(page).to have_content("Add bookmark")
  end

  scenario 'Go to add_bookmark page' do
    visit '/bookmarks'
    click_on 'Add bookmark'
    expect(page).to have_content('Add url')
  end

  scenario 'Adds bookmark to database' do
    visit '/bookmarks'
    click_on 'Add bookmark'
    fill_in 'url_field', with: bbc_link
    click_button 'Submit bookmark'
    expect(page).to have_content(bbc_link)
  end

  xscenario "Doesn't submit if URL invalid" do
    visit '/bookmarks'
    click_on 'Add bookmark'
    fill_in 'url_field', with: 'ww.didntstartwithhttp.com'
    click_button 'Submit bookmark'
    expect(page).to have_content('Add urldfs')
  end
end
