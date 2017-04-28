class CreateVotes < ActiveRecord::Migration
  def change
  	create_table :votes do |t|
  		t.integer :upvote
  		t.string :votable_type, {null: false}
  		t.integer :votable_id, {null: false}
  		t.integer :user_id, {null: false}

  		t.timestamps(null: false)
  	end
  	add_index :votes, [:votable_id, :votable_type]
  end
end
