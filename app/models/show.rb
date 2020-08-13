class Show < ActiveRecord::Base 
  
  def self.highest_rating
    self.maximum(:rating)
  end 
  
  def self.most_popular_show
    self.where(":rating > ?", 9)
  end 
  
end 