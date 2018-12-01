class Comedian < ActiveRecord::Base
  
  has_many :specials
  
  validates_presence_of :name, :age
  
  def self.average_age
    average(:age)
  end
  
  def self.unique_cities
    comedians = distinct(:city).order(city: :asc).all
    comedians.pluck(:city)
  end
  
  def self.filter_by_age(age)
    where("age = ?", age)
  end
  
  def self.sort_by(attribute)
    order(attribute).all
  end
  
  def total_specials
    specials.count
  end
end
