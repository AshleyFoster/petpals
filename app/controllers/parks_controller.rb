class ParksController < ApplicationController

  def index
    if params[:search].present?
      @parks = Park.near(params[:search], 50).page params[:page]
    else
    @parks = Park.all
    end
  end

  def show
    @park = Park.find(params[:id])
  end

  def new
    @park = Park.new
  end

  def create
    @park = Park.create(park_params)
    @park.user = current_user
    if @park.save
      redirect_to park_path(@park), notice: "This park has been added!"
    else
      flash.now[:alert] = "Unable to add this park"
      render 'new'
    end
  end

 def edit
     @park = Park.find(params[:id])
   end

   def update
     @park = Park.find(params[:id])
     @park.user = current_user

     if @park.update_attributes(park_params)
       redirect_to parks_path, notice: "Park Updated"
     else
       flash.now[:alert] = "Unable to update park"
       render 'edit'
     end
   end

   def destroy
     @park = Park.find(params[:id])
     @park.destroy
     redirect_to parks_path, notice: "Park Removed"
   end

  private

  def park_params
    params.require(:park).permit(:address, :details, :longitude, :latitude)
  end
end