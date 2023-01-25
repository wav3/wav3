# frozen_string_literal: true

class User < ApplicationRecord
  class Profile < ApplicationRecord
    belongs_to :user

    validates :handle, presence: true, uniqueness: { case_sensitive: false }
  end
end
