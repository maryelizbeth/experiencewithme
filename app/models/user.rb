class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :omniauthable
  attr_accessible :name, :email, :password, :password_confirmation, :encrypted_password

  has_many :authentications

  def self.find_for_google(data, signed_in_resource=nil)
    user = User.where(email: data["info"]["email"].downcase).first_or_create(google_hash(data["info"]))
    user.authentications.find_or_create_for_google(data)
    user
  end

  def self.google_hash(data)
  {
    name: data["name"],
    email: data["email"]
  }
  end
end