class RemoveIntegerField < ActiveRecord::Migration
  def change
  	remove_column :hack_apps, :integer
  end
end
