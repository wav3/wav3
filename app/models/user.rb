# frozen_string_literal: true

class User < ApplicationRecord
  rolify :role_cname => 'Admin'
  devise :database_authenticatable, :validatable

  has_one :profile, dependent: :destroy, required: true, validate: true

  accepts_nested_attributes_for :profile, update_only: true

  delegate :handle, to: :profile
end
