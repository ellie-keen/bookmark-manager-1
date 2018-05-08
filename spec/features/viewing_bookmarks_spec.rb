feature 'viewing bookmarks' do
  scenario 'displaying bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content("https://makersstudents.slack.com/")
    expect(page).to have_content("https://github.com/makersacademy/course")
    expect(page).to have_content("https://media1.tenor.com/images/170130993a5ce8d03f29415756393597/tenor.gif?itemid=7963714")
  end
end
