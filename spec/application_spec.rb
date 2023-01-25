# frozen_string_literal: true

# spec/application_spec.rb

require 'rails_helper'

RSpec.describe 'Application content' do
  it 'shows the app name' do
    visit application_path
    expect(page).to have_content('WAV3')
  end
end
