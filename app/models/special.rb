class Special < ActiveRecord::Base
  validates_presence_of :name
  
  belongs_to :comedian
  
  def self.average_length
    average(:length)
  end
  
  def self.filter_by_age(filter_age)
    joins(:comedian).where(comedians: {age: filter_age})
  end
  
  def self.total_specials
    count
  end
  
end