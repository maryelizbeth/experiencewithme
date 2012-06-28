class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.integer :user_id
      t.string  :token
      t.integer :friend_id
      t.string  :friend_email
      t.integer :adventure_id

      t.timestamps
    end
  end
end
