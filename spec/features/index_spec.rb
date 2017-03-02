require 'spec_helper'

describe 'index', type: :feature do

  before do
    visit '/'
  end

  it 'shows the About Me' do
    expect(page).to have_content 'About Me'
  end

  it 'displays project' do
   expect(page).to have_css '.main'
   within '.main' do
     expect(page).to have_content 'Projects'
   end
  end

  it 'it shows the logo' do
   expect(page).to have_css 'h3'
   within 'h3' do
     expect(page).to have_content 'My Portfolio'
   end
  end

end
