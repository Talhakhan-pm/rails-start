class CarsController < ApplicationController
  before_action :params_id, only: [:show, :edit, :update, :destroy]

  def show
    # Check private
  end

  def index
    @car= Car.all
  end

  def new
    @car= Car.new
  end
  
  def create
    @car= Car.new(permit_id)
    if @car.save
    redirect_to @car
    else
    render 'new'
    end
  end

  def edit
    # Check private
  end

  def update
    # check private
    if @car.update(permit_id)
      flash[:notice] = "Car was updated"
      redirect_to @car
    else
      render 'edit'
    end  
  end

  def destroy
    # Check private
    @car.destroy
    redirect_to cars_path
  end

  private

  def params_id
    @car= Car.find(params[:id])
  end
  
  def permit_id
    params.require(:car).permit(:title, :description)
  end
  
  

end