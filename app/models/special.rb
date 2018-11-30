class Special < ActiveRecord::Base
  validates_presence_of :name
  
  belongs_to :comedian
  
  def self.average_length
    average(:length)
  end
  
  def self.filtered_average_length(age)
    joins(:comedian)
  end
  
  def self.total_specials
    count
  end
  
end