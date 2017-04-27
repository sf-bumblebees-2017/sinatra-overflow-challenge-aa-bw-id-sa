class CreateComments < ActiveRecord::Migration
  def change
  	create_table :comments do |t|
  		t.string :body, {null: false}
  		t.string :commentable_type, {null: false}
  		t.integer :commentable_id, {null: false} 
  		t.integer :user_id, {null: false}

  		t.timestamp(null: false)
  	end 
  	add_index :comments, [:commentable_id, :commentable_type]
  end
end