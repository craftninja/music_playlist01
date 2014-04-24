require 'spec_helper'

feature 'User can manage a music playlist' do
  scenario 'User can add titles, links to the homepage' do
    visit '/'
    title = "Mokadem - 'Mokadem' EP"
    url = 'https://soundcloud.com/thump/sets/mokadem-mokadem-ep'
    fill_in 'Title', with: title
    fill_in 'URL', with: url
    click_on 'Queue!'
    expect(page).to have_content(title)
    expect(page).to have_content(url)
  end
end
