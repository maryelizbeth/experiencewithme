require 'spec_helper'

describe User do
  context "visiting the home page" do 
    it "can click a get started link" do 
      visit root_path 
      page.should have_link("get started")   
    end 
    it "is taken to log in if they click the get started link" do
      visit root_path
      click_link "get started"
      page.should have_link("sign in with google")
    end 
  end 
end 