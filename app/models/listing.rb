class Listing < ActiveRecord::Base
  
  attr_accessible :address, :bathrooms, :beds, :city, :country, :description, :size, :title, :zipcode, :facility_ids
  attr_accessible :monthly_rent, :deposit_amount, :property_type_id, :available_from, :image, :published, :property_for
  
  # Association
  has_and_belongs_to_many :facilities
  belongs_to :property_type
  belongs_to :user
  has_one :saved_listing

  validates_presence_of :title, :address, :zipcode, :city, :size, :property_for
   
  mount_uploader :image, ListingImageUploader
  is_impressionable
  acts_as_votable

  #Scopes
  scope :by_city, ->(city_name) {where(:city => city_name)}
  
  
  def add_to_saved_listings(user_id)
    SavedListing.create(:user_id => user_id, :listing_id => self.id)
  end
  
  def remove_from_saved_listings(user_id)
    SavedListing.delete_all(:user_id => user_id, :listing_id => self.id)
  end

  
  def saved?(user_id)
    SavedListing.where(:user_id => user_id, :listing_id => self.id).any?
  end

  
end
