class Friend < ActiveRecord::Base
  attr_accessible :email, :user_id, :adventure_id

  belongs_to :user
  has_many :invitations
  validates_presence_of :email
  validates_uniqueness_of :email

  def self.invite_to_adventure(token)
    adventure = Adventure.find_from_invitation_token(invitation_token)
    create(adventure_id: adventure_id)
  end
end
