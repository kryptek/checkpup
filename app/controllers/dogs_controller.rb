class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def new
    @dog = Dog.new 
    authorize! :create, Dog, message: "You need to be a member to create a new dog."
  end

  def create
  @dog = current_user.dogs.build(params[:dog])
    if @dog.save
      flash[:notice] = "Dog was created."
      redirect_to @dog
    else
      flash[:error] = "There was an error saving the dog. Please try again."
      render :new
    end
  end

  def edit
    @dog = Dog.find(params[:id])
    authorize! :edit, @dog, message: "You need to own the dog to edit it."
  end

  def update
    @dog = Dog.find(params[:id])
    authorize! :update, @dog, message: "You need to own the dog to edit it."
    if @dog.update_attributes(params[:dog])
      flash[:notice] = "Dog was updated."
      redirect_to @dog
    else
      flash[:error] = "There was an error saving the dog. Please try again."
      render :edit
    end
  end
end
