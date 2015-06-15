class HackAppDecisionDateAndOwner < ActiveRecord::Migration
  def change
  	add_column :hack_apps, :decision_date, :datetime, :default => nil
  	add_column :hack_apps,  :decision_made_by, :integer, :default => nil
  end
end
