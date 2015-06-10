class AddAttributesToHackApp < ActiveRecord::Migration
  def change
  	add_column :hack_apps, :user_id, :integer
  	add_column :hack_apps, :teammates, :integer
  	add_column :hack_apps, :why_this_hackathon, :text
  	add_column :hack_apps, :skill, :string
  	add_index  :hack_apps, :user_id, :name => 'user_id_ix'
  end
end
