# frozen_string_literal: true

class User < ApplicationRecord
  class Role < ApplicationRecord
    belongs_to :user
    belongs_to :role
  end
end
