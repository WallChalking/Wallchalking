class Listing < ActiveRecord::Base
  
  attr_accessible :address, :bathrooms, :beds, :city, :country, :description, :size, :title, :zipcode, :facility_ids
  attr_accessible :monthly_rent, :deposit_amount, :property_type_id, :available_from, :image, :published, :property_for
  
  # Association
  has_and_belongs_to_many :facilities
  belongs_to :property_type
  belongs_to :user

  validates_presence_of :title, :address, :zipcode, :city, :size, :property_for

  
  mount_uploader :image, ListingImageUploader
end
