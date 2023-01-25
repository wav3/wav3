# frozen_string_literal: true
# spec/root_spec.rb

require 'rails_helper'

RSpec.describe 'Root content' do
  it 'shows the app name' do
    visit root_path
    expect(page).to have_content('WAV3')
  end
end
