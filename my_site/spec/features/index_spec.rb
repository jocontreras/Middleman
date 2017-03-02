require 'spec_helper'

it 'displays project list' do
  expect(page).to have_css '.projects'
  within '.projects' do
    expect(page).to have_content 'BMI Calculator'
    expect(page).to have_content 'Fizz Buzz'
  end
end
