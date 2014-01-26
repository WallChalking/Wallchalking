class Review < ActiveRecord::Base
  attr_accessible :review, :rating, :user_id, :listing_id
  
  belongs_to :user
  belongs_to :listing
end
