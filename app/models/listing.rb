class Listing < ActiveRecord::Base
  has_and_belongs_to_many :facilities
  belongs_to :property_type
  
  attr_accessible :address, :bathrooms, :beds, :city, :country, :description, :size, :title, :zipcode, :facility_ids
  attr_accessible :monthly_rent, :deposit_amount, :property_type_id
end