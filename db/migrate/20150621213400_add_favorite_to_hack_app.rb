class AddFavoriteToHackApp < ActiveRecord::Migration
  def change
  	add_column :hack_apps, :favorite, :boolean, :default => false
  end
end
