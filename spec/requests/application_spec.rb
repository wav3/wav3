# frozen_string_literal: true

# spec/application_spec.rb

require 'rails_helper'

RSpec.describe 'Application' do
  describe 'GET /' do
    subject(:call) { get '/' }

    it 'responds successfully' do
      call
      expect(response).to be_successful
      expect(page).to have_content('WAV3')
    end
  end
end
