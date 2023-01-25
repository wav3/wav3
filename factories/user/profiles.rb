# frozen_string_literal: true

FactoryBot.define do
  factory :user_profile, class: 'User::Profile' do
    user { build :user, profile: instance }

    sequence(:handle) { |n| "user#{n}" }
  end
end
