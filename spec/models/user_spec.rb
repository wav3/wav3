# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User do
  describe 'associations' do
    it { is_expected.to have_many(:grants).dependent(:destroy) }
    it { is_expected.to have_one(:profile).dependent(:destroy).required }
    it { is_expected.to have_many(:roles).through(:grants) }
  end

  describe 'validations' do
    subject { build(:user) }

    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_uniqueness_of(:email).case_insensitive }
  end
end
