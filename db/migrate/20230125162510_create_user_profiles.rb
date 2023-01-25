class CreateUserProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :user_profiles do |t|
      t.references :user, foreign_key: true, index: { unique: true }, null: false
      t.string :handle, index: { unique: true }, null: false
      t.timestamps
    end
  end
end
