class Show < ActiveRecord::Base 
  
  def self.highest_rating
    self.maximum(:rating)
  end 
  
  def self.most_popular_show
    mps = self.maximum(:rating)
    mps.order(rating: :asc)
  end 
  
end 