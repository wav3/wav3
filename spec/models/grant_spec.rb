# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Grant do
  describe 'associations' do
    it { is_expected.to belong_to(:role) }
    it { is_expected.to belong_to(:user) }
  end

  describe 'validations' do
    subject { build(:grant) }

    it { is_expected.to validate_uniqueness_of(:role_id).scoped_to(:user_id) }
  end
end
