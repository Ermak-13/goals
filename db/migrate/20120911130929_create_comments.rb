class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.integer :receiver_id
    	t.integer :sender_id
    	t.string :message
      t.timestamps
    end
  end
end
