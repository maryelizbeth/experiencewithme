class Friend < ActiveRecord::Base
  attr_accessible :email, :user_id

  belongs_to :user
  has_many :invitations
  validates_presence_of :email
end
