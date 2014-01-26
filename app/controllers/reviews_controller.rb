class ReviewsController < ApplicationController
  def create
    @review = Review.new(params[:review])
    @review.user_id = current_user.id
    
    @review.save
    respond_to do |format|
      format.js
    end
  end
  
end
