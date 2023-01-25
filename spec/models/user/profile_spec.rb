# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User::Profile do
  describe 'associations' do
    it { is_expected.to belong_to(:user) }
  end

  describe 'validations' do
    subject { build(:user_profile) }

    it { is_expected.to validate_presence_of(:handle) }
    it { is_expected.to validate_uniqueness_of(:handle).case_insensitive }
  end
end
