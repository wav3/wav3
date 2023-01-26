# frozen_string_literal: true

class Role < ApplicationRecord
  has_many :user_roles, dependent: :destroy
  has_many :users, through: :user_roles

  belongs_to :resource, polymorphic: true, optional: true

  scopify
end
