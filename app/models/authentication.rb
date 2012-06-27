class Authentication < ActiveRecord::Base
  attr_accessible :provider, :refresh_token, :token, :uid, :user_id
  belongs_to :user

  def self.find_or_create_for_google(data)
    where(token: data["credentials"]["token"],
          provider: data["provider"]
         ).first_or_create(
                            uid: data["uid"],
                            refresh_token: data["credentials"]["refresh_token"]
                          )
  end
end
