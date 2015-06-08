class CreateHackathons < ActiveRecord::Migration
  def change
    create_table :hackathons do |t|

      t.timestamps null: false
    end
  end
end
