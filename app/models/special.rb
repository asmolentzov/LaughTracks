class Special < ActiveRecord::Base
  validates_presence_of :name
  
  def self.average_length
    average(:length)
  end
  
  def self.total_specials
    count
  end
end