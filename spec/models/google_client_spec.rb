require 'spec_helper'

describe GoogleClient do
  describe '.client' do
    class ClientExample
      include GoogleClient
    end

    it "returns a client" do
      ClientExample.new.client.should be
    end
  end 
end