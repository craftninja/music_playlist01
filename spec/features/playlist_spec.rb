require 'spec_helper'

feature 'User can manage a music playlist' do
  scenario 'Shows Welcome' do
    visit '/'
    expect(page).to have_content('Welcome')
  end
end
