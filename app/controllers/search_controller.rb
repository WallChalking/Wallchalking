class SearchController < ApplicationController
  def search_result    
    if request.post?
      @listings = Listing.by_city(params[:search][:city])
      @listings = @listings.where(:beds => params[:search][:beds]) unless params[:search][:beds].blank?
      @listings = @listings.where(:bathrooms => params[:search][:bathrooms]) unless params[:search][:bathrooms].blank?
      @listings = @listings.where(:size => params[:search][:size]) unless params[:search][:size].blank?
      @listings = @listings.where("size >= ?", params[:search][:min]) unless params[:search][:min].blank?
      @listings = @listings.where("size <= ?", params[:search][:max]) unless params[:search][:max].blank?
      @listings = @listings.where(:property_type_id => params[:search][:property_type]) unless params[:search][:property_type].blank?
      @listings = @listings.where(:property_for => params[:search][:property_for]) unless params[:search][:property_for].blank?
      @listings = @listings.order("id desc")
      @listings = Kaminari.paginate_array(@listings).page(params[:page]).per(20)
    else
      @listings = Listing.order("id desc").page(params[:page]).per(20)
    end
    
  end
end
