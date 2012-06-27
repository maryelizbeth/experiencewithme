require 'spec_helper'

describe Adventure do
  let(:adventure)      { Fabricate(:adventure) }
  let!(:adventure_date) { Fabricate(:adventure_date, :adventure_id => adventure.id) } 
  context "#dates" do 
    it "returns a collection of dates for a given adventure" do 
      adventure.dates.should include(adventure_date.date)
    end 
  end 
end 