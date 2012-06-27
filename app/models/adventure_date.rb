class AdventureDate < ActiveRecord::Base
  attr_accessible :adventure_id, :date

  belongs_to :adventure

  # def display(date)
  #   Date.strptime(date, '%m-%d-%Y')
  # end 
end
