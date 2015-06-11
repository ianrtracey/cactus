class AddHackathonId < ActiveRecord::Migration
  def change
  	add_column :hack_apps, :hackathon_id, :integer
  	add_index  :hack_apps, :hackathon_id, :name => 'hackathon_id_ix'
  end
end
