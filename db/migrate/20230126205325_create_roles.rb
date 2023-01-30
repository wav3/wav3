class CreateRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :roles do |t|
      t.string :name, null: false
      t.references :resource, index: true, polymorphic: true
      t.timestamps
      t.index %i[name resource_id resource_type], unique: true
    end
  end
end
