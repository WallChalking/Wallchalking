class ListingImage < ActiveRecord::Base
  belongs_to :listing
  attr_accessible :name
end
