# frozen_string_literal: true

FactoryBot.define do
  factory :user_profile, class: 'User::Profile' do
    user { association :user, profile: instance }

    sequence(:handle) { |n| "user#{n}" }
  end
end
