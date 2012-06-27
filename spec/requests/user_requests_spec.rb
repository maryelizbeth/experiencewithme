require 'spec_helper'

describe User do
  context "visiting the home page" do 
    it "can click a get started link" do 
      visit root_path 
      page.should have_link("get started")   
    end 
    it "can logout if authenticated" do
      visit root_path
      page.should have_link("sign out")
    end
  end 

  context "visiting the adventure page" do
    it "can view available adventures" do
      visit adventures_path
      page.should have_content("Choose Your Adventure")
      page.should have_selector("div#adventure")
    end

    it "can click an adventure link to visit livingsocial.com"
    it "can view dates for an adventure"
    it "can view location information for an adventure"
    it "can select an adventure"
  end
end 