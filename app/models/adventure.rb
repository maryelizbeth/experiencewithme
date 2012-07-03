class Adventure < ActiveRecord::Base
  attr_accessible :city, :link, :name, :adventure_date

  has_many :adventure_dates
  has_many :invitations

  def dates
    self.adventure_dates.collect(&:date)
  end 

  def json_adventures
    self.to_json
  end 
end
