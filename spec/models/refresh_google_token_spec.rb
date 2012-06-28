require "spec_helper"

describe RefreshGoogleToken do
  context "an instance of RefreshGoogleToken" do
    let(:google_account) do 
      double(:google_account)
    end

    subject { RefreshGoogleToken.new(google_account) }

    describe "#update_user" do 
      it "does something"
    end

    it "provides a refresh token with unwanted characters" do 
      google_account.stub(:refresh_token => "refresh%2Ftoken")
      subject.refresh_token.should == "refresh/token"
    end

    it "can post to the client" do
      post_proc = lambda { "Hi!" }

      client = double(:client)
      client.should_receive(:post).with(&post_proc).and_return("Bye!")

      subject.stub(:client => client)

      subject.post(&post_proc).should == "Bye!"      
    end

    it "provides a json parsed response" do
      response = double(:response)
      response.stub(:body => "some stuff")
      JSON.should_receive(:parse).with("some stuff").and_return("some json")

      subject.stub(:post => response)
      subject.response.should == "some json"
    end

    it "calls url and sets body on request" do
      req = double(:req)
      req.should_receive(:url).with("/o/oauth2/token")
      req.should_receive(:body=).with("body")

      subject.should_receive(:post).and_yield(req)
      subject.stub(:request_body => "body")
      subject.get_token
    end

    it "can format a request body" do
      subject.stub(:refresh_token => "BOB")

      body = "client_secret=#{GOOGLE_SECRET}&grant_type=refresh_token&refresh_token=BOB&client_id=#{GOOGLE_KEY}"
      subject.request_body.should == body
    end
  end
end