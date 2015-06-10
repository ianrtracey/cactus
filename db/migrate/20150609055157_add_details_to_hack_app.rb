class AddDetailsToHackApp < ActiveRecord::Migration
  def change
  	add_column :hack_apps, :first_name, :string, :default => ""
  	add_column :hack_apps, :last_name, :string, :default => ""
  	add_column :hack_apps, :school, :string, :default => ""
  	add_column :hack_apps, :resume, :string, :default => ""
  	add_column :hack_apps, :facebook, :string, :default => ""
  	add_column :hack_apps, :github, :string, :default => ""
  	add_column :hack_apps, :website, :string, :default => ""
  	add_column :hack_apps, :language_proficiency, :string, :default => ""
  end
end
