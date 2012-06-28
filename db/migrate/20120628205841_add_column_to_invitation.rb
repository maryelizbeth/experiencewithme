class AddColumnToInvitation < ActiveRecord::Migration
  def change
    add_column :invitations, :friend_id, :integer
    add_column :invitations, :user_id, :integer
    add_column :invitations, :token, :string
  end
end
