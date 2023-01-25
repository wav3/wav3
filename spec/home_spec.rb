# spec/home_spec.rb

require 'rails_helper'

RSpec.describe 'Home content' do
  it 'shows the app name' do
    visit root_path
    expect(page).to have_content('WAV3')
  end
end
