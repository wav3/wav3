# frozen_string_literal: true

class Role < ApplicationRecord
  belongs_to :resource, polymorphic: true, optional: true
  has_many :grants, dependent: :destroy
  has_many :users, through: :grants

  validates :name, presence: true, uniqueness: { scope: %i[resource_id resource_type] }
end
