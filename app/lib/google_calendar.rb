class GoogleCalendar
  attr_accessor :client, :token, :adventure_date, :user
  CALENDAR_URL = "/calendar/v3/freeBusy?fields=calendars&key=#{GOOGLE_KEY}"

  include GoogleClient 

  
  def initialize(user, possible_time)
    get_new_token(user)
    @token = "Bearer #{user.google.token}"
    @user = user
    @adventure_date = adventure_date
  end

  def get_new_token(user)
    rgt = RefreshGoogleToken.new(user.google)
    rgt.save_token
  end

  def get_availability
    resp = client.post do |req|
             req.url CALENDAR_URL
             req.headers['Content-Type'] = 'application/json'
             req.headers['Authorization'] = token
             req.body = body.to_json
          end
     JSON.parse(resp.body)
  end

  def save_availability
    if get_availability["calendars"]["#{user.email}"]["busy"].size == 0
      user.friends.create(adventure_id: adventure_date.adventure_id, 
                                     adventure_date_id: adventure_date.id, 
                                     permanent: false)
    else
      user.friends.where(adventure_date: adventure_date.id, 
                                    permanent: false).destroy_all
    end
  end

  def client
    @client ||= Faraday.new(:url => 'https://www.googleapis.com') do |faraday|
                  faraday.request  :url_encoded
                  faraday.response :logger
                  faraday.adapter  Faraday.default_adapter
                end
  end

  def body
  {
    items: [
      {
        id: user.email
      }
    ],
      timeMin: possible_time.time_start.round.iso8601(3),
      timeMax: possible_time.time_end.round.iso8601(3)
  }
  end
end