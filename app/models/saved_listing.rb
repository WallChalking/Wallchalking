class SavedListing < ActiveRecord::Base
  belongs_to :user
  belongs_to :listing
  
  attr_accessible :user_id, :listing_id
end
