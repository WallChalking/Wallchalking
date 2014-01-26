class ListingsController < ApplicationController
  before_filter :authorize_list_owner, :only => [:edit]
  
  impressionist :actions=>[:show]

  # GET /listings
  # GET /listings.json
  def index
    @listings = Listing.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @listings }
    end
  end

  # GET /listings/1
  # GET /listings/1.json
  def show
    @listing = Listing.find(params[:id])
    @review = Review.new
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @listing }
    end
  end

  # GET /listings/new
  # GET /listings/new.json
  def new
    @listing = Listing.new
    @facilities = Facility.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @listing }
    end
  end

  # GET /listings/1/edit
  def edit
    @listing = Listing.find(params[:id])
  end

  # POST /listings
  # POST /listings.json
  def create
    @listing = Listing.new(params[:listing])
    @listing.user_id = current_user.id
    @listing.country = "Austria"
#    @listing.listing_image.name = "test.jpg"
    respond_to do |format|
      if @listing.save
        format.html { redirect_to @listing, notice: 'Listing was successfully created.' }
        format.json { render json: @listing, status: :created, location: @listing }
      else
        format.html { render action: "new" }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /listings/1
  # PUT /listings/1.json
  def update
    @listing = Listing.find(params[:id])

    respond_to do |format|
      if @listing.update_attributes(params[:listing])
        format.html { redirect_to @listing, notice: 'Listing was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listings/1
  # DELETE /listings/1.json
  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy

    respond_to do |format|
      format.html { redirect_to listings_url }
      format.json { head :no_content }
    end
  end

  def authorize_list_owner
    @listing = Listing.find(params[:id])
    unless current_user == @listing.user
      redirect_to listings_path, :notice => 'Operation not allowed.'
    end
  end
  
  def like    
    @listing = Listing.find(params[:id])
    @listing.liked_by current_user
    respond_to do |format|
      format.js
    end      
  end
  
  def unlike    
    @listing = Listing.find(params[:id])
    @listing.unliked_by current_user
    respond_to do |format|
      format.js
    end      
  end
  
  def save
    @listing = Listing.find(params[:id])
    @listing.add_to_saved_listings(current_user.id)
    
    respond_to do |format|
      format.js
    end
  end
  
  def unsave
    @listing = Listing.find(params[:id])
    @listing.remove_from_saved_listings(current_user.id)
    
    respond_to do |format|
      format.js
    end
  end

end
