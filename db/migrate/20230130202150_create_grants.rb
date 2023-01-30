class CreateGrants < ActiveRecord::Migration[7.0]
  def change
    create_table :grants, id: false do |t|
      t.references :role, foreign_key: true, index: true, null: false
      t.references :user, foreign_key: true, index: true, null: false
      t.index %i[role_id user_id], unique: true
    end
  end
end
