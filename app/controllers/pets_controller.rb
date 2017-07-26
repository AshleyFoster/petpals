class PetsController < ApplicationController
  before_action :authenticate_user!

  def index
    @pets = current_user.pets
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.create(pet_params)
    @pet.user = current_user
    if @pet.save
      redirect_to pet_path(@pet), notice: "Your pet has been added!"
    else
      flash.now[:alert] = "Unable to add your pet"
      render 'new'
    end
  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:id])

    if @pet.update_attributes(pet_params)
      redirect_to pets_path, notice: "Pet Updated"
    else
      flash.now[:alert] = "Unable to update your pet"
      render 'edit'
    end
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to pets_path, notice: "Pet Removed"
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :birthday, :sex, :breed, :description, :pic)
  end
end
