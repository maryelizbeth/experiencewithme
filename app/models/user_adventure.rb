class UserAdventure < ActiveRecord::Base
  attr_accessible :adventure_id, :user_id, :adventure_date

  belongs_to :user
  belongs_to :adventure
  has_one :adventure_date
end
