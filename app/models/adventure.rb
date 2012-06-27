class Adventure < ActiveRecord::Base
  attr_accessible :city, :link, :name

  has_many :adventure_dates

  def dates
    self.adventure_dates.collect(&:date)
  end 
end
