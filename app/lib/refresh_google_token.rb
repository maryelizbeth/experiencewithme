class RefreshGoogleToken
  attr_accessor :client, :google_account

  delegate :post, :to => :client

  include GoogleClient

  def initialize(google_account)
    @google_account = google_account
  end

  def refresh_token
    google_account.refresh_token.gsub(/%2F/, "/")
  end 

  def response 
    JSON.parse(get_token.body)
  end 

  def get_token
    post do |req|
      req.url "/o/oauth2/token"
      req.body = request_body
    end
  end

  def request_body 
    "client_secret=#{GOOGLE_SECRET}&grant_type=refresh_token&refresh_token=#{refresh_token}&client_id=#{GOOGLE_KEY}"
  end 

  def save_token
    google_account.token = get_token["access_token"]
    google_account.save
  end

  def self.update_user(user)
    # RefreshGoogleToken.new(user.google).save_token
  end
end