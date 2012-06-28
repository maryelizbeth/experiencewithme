module GoogleClient
  def client
    @client ||= create_client
  end

private
  def create_client
    Faraday.new(:url => 'https://www.googleapis.com') do |faraday|
                  faraday.request  :url_encoded
                  faraday.response :logger
                  faraday.adapter  Faraday.default_adapter
                end
  end
end