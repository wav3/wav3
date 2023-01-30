# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Role do
  describe 'associations' do
    it { is_expected.to belong_to(:resource).optional }
    it { is_expected.to have_many(:grants).dependent(:destroy) }
    it { is_expected.to have_many(:users).through(:grants) }
  end

  describe 'validations' do
    subject { build(:role) }

    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:name).scoped_to(:resource_id, :resource_type) }
  end
end
