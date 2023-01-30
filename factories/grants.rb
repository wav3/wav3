# frozen_string_literal: true

FactoryBot.define do
  factory :grant do
    role
    user
  end
end
