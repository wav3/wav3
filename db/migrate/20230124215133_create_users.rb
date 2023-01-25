# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email, index: { unique: true }, null: false
      t.string :encrypted_password, null: false
      t.timestamps null: false
    end
  end
end
