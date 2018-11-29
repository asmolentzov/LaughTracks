class Comedian < ActiveRecord::Base
  
  has_many :specials
  
  validates_presence_of :name, :age
  
  def self.average_age
    average(:age)
  end
  
  def self.unique_cities
    # select(:city).distinct.to_a.map { |comedian| comedian.city }.join(' ')
    distinct(:city).pluck(:city).join(' ')
  end
end
