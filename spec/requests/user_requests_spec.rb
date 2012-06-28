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
    let(:user)      { Fabricate.build(:user) }
    let(:adventure) { Fabricate(:adventure) }
    let!(:adventure_date) { Fabricate(:adventure_date, :adventure_id => adventure.id) }
    before(:each) do 
      sign_up(user)
    end 

    it "can view available adventures" do 
      visit adventures_path
      page.should have_content("Choose Your Adventure")
      page.should have_selector("div#adventure")
    end

    it "can click an adventure link to visit livingsocial.com" do  
      visit adventures_path
      page.should have_link("view on livingsocial.com")
    end 
    it "can view dates for an adventure" do  
      visit adventures_path
      adventure.dates.first.should_not be_empty
      page.should have_content(adventure.dates.first)
    end
    it "can view location information for an adventure" do  
      visit adventures_path
      page.should have_content(adventure.city)
    end 

    it "can view a select link" do  
      visit adventures_path
      page.should have_link("select")
    end

    it "can click on the select link to select an adventure" do 
      visit adventures_path
      expect { click_link("select") }.to change { UserAdventure.count }.by(1)
    end 
  end

  context "visiting the friends page" do 
    let(:user) { Fabricate.build(:user) }
    before(:each) do 
      sign_up(user)
      visit friends_path
    end 

    it "can enter a friend's email address" do 
      page.should have_field("friend_email")
    end
    it "can add a friend and view their email address on the page" do
      fill_in "friend_email", :with => "fake@fake.com"
      click_button("Add")
      page.should have_content("fake@fake.com")
    end
  end 

end 