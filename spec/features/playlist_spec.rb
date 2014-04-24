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

  scenario 'User can update songs' do
    visit '/'
    old_title = touch
    new_title = 'Holy Other - Touch'
    url = 'https://soundcloud.com/holyother/touch'
    fill_in 'Title', with: old_title
    fill_in 'URL', with: url
    click_on 'Queue!'
    click_on 'Touch'
    expect(page).to have_content(old_title)
    expect(page).to have_content(url)
    click_on 'Edit'
    fill_in 'Title', with: new_title
    fill_in 'URL', with: url
    click_on 'Update'
    expect(page).to have_content(new_title)
    expect(page).to have_content(url)
  end

end
