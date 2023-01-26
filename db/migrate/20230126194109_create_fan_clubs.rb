class CreateFanClubs < ActiveRecord::Migration[7.0]

  def change
    create_table :fan_clubs do |t|

      t.timestamps
    end
  end
end
