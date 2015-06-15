class AddStatusToHackApp < ActiveRecord::Migration
  def change
  	add_column :hack_apps, :status, :string, :default => "Undecided"
  end
end
