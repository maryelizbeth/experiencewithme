class Invitation < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :user_id, :token, :friend_id, :friend_email, :adventure_id

  belongs_to :user
  belongs_to :adventure
  belongs_to :friend
end
