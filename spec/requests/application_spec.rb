# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Application' do
  describe 'GET /' do
    subject(:call) { get '/' }

    it 'responds successfully' do
      call
      expect(response).to be_successful
    end
  end
end
