class CreateVotes < ActiveRecord::Migration
  def change
  	create_table :votes do |t|
  		t.boolean :upvote, {null: false}
  		t.string :votable_type, {null: false}
  		t.integer :votable_id, {null: false}
  		t.integer :user_id, {null: false}

  		t.timestamp(null: false)
  	end
  	add_index :votes, [:votable_id, :votable_type]
  end
end
