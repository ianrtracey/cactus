class DropHackAppAndBuildSample < ActiveRecord::Migration
  def change
  	drop_table :hack_apps
    create_table :hack_apps do |t|
      t.timestamps null: false
      t.integer :user_id
      t.index :user_id, :name => 'user_id_ix' 
      t.integer :hackathon_id, :integer
  	  t.index   :hackathon_id, :name => 'hackathon_id_ix'
      t.datetime :submitted_at, :default => nil
      t.string :first_name, :default => ""
      t.string :last_name, :default => ""
      t.string :email, :default => ""
      t.string :gender, :default => ""
      t.integer :age, :default => 0
      t.string :school, :default => ""
      t.boolean :do_you_need_travel_reimbursement?, :default => false
      t.boolean :is_this_your_first_hackathon?, :default => false
      t.string :skills, :default => ""
      t.text :past_projects, :default => ""
      t.text :why_hack_arizona, :default => ""
      t.string :github, :default => ""
      t.string :linkedin, :default => ""
      t.string :website, :default => ""
      t.string :resume, :default => ""
      t.string :teammates, :default => ""
      t.string :tshirt_size, :default => ""
      t.boolean :accepted_code_of_conduct, :default => false

  	end
  end
end
