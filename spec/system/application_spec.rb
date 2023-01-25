# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Application' do
  describe 'visiting the root page' do
    before { visit '/' }

    it 'displays the application brand' do
      expect(page).to have_text('WAV3')
    end
  end
end
