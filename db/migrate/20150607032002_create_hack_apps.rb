class CreateHackApps < ActiveRecord::Migration
  def change
    create_table :hack_apps do |t|

      t.timestamps null: false
    end
  end
end
