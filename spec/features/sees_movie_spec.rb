require 'rails_helper'

feature 'user sees a movie' do
  let!(:movie) { FactoryGirl.create(:movie) }

  scenario 'the movie name is visible' do
    visit root_path
    expect(page).to have_content(movie.name)
  end
end
