# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :validatable

  has_one :profile, dependent: :destroy, required: true, validate: true
end
