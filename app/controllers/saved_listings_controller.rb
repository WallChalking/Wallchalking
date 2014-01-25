class SavedListingsController < ApplicationController
  
  def save_listing
    
    
    respond_to do |format|
      format.js
    end
  end
  
end
