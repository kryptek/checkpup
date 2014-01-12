class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def new
    @dog = Dog.new 
  end

  def create
  @dog = Dog.new(params[:dog])
    if @dog.save
      flash[:notice] = "Dog was created."
      redirect_to @dog
    else
      flash[:error] = "There was an error saving the dog. Please try again."
      render :new
    end
  end

  def edit
  end

   def update
    @dog = Dog.find(params[:id])
    if @dog.update_attributes(params[:post])
      flash[:notice] = "Dog was updated."
      redirect_to @dog
    else
      flash[:error] = "There was an error saving the dog. Please try again."
      render :edit
    end
  end
end
