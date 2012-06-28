require 'spec_helper'
require 'ostruct'

describe GoogleCalendar do 
  let(:user) { User.new }
  let(:gc) { GoogleCalendar.new(user) }

  before(:each) do
    auth = OpenStruct.new(:token => "T0KEN")
    user.stub(:google_authentication).and_return(auth)
  end

  describe ".initialize" do
    it "requires only a user" do
      expect{GoogleCalendar.new(user)}.to_not raise_error
    end
  end

  describe "#body" do 
    it "returns a hash" do
      gc.body.should be_a(Hash)
    end

    it "has items" do 
      gc.body['items'].should be
    end
  end
end