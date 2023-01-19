# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Errors' do
  describe 'GET /404' do
    subject(:call) { get '/404' }

    it 'responds successfully' do
      call
      expect(response).to be_successful
    end
  end

  describe 'GET /422' do
    subject(:call) { get '/422' }

    it 'responds successfully' do
      call
      expect(response).to be_successful
    end
  end

  describe 'GET /500' do
    subject(:call) { get '/500' }

    it 'responds successfully' do
      call
      expect(response).to be_successful
    end
  end
end
