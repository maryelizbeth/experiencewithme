class UserAdventure < ActiveRecord::Base
  attr_accessible :adventure_id, :user_id

  belongs_to :user
  belongs_to :adventure
end
