# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :validatable

  has_one :profile, dependent: :destroy, required: true, validate: true
  has_many :user_roles, dependent: :destroy
  has_many :roles, through: :user_roles

  accepts_nested_attributes_for :profile, update_only: true

  delegate :handle, to: :profile
end
