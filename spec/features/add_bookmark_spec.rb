feature 'Adding a bookmark' do
  let(:bbc_link) { 'http://bbc.co.uk' }
  let(:bbc_name) { 'BBC' }

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
    fill_in 'title_field', with: bbc_name
    fill_in 'url_field', with: bbc_link
    click_button 'Submit bookmark'
    expect(page).to have_content(bbc_link)
  end

  scenario "Gives the user an error if URL not valid" do
    visit '/bookmarks'
    click_on 'Add bookmark'
    fill_in 'title_field', with: bbc_name
    fill_in 'url_field', with: 'ww.didntstartwithhttp.com'
    click_button 'Submit bookmark'
    expect(page).to have_content('Error. Link invalid - not added to database.')
  end
end
