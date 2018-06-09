class BikesController < ApplicationController
  #before_action :authenticate_user!, :except => [:index, :show]

  def index
    @bikes = Bike.all
  end

  def show
    @bike = Bike.find(params[:id])
  end

  def new
  end

  def edit
    @bike = Bike.find(params[:id])
  end

  def create
    @bike = Bike.new(bike_params)
 
    if @bike.save
      redirect_to @bike
    else
       render 'new'
    end
  end

  def update
    @bike = Bike.find(params[:id])
 
    if @bike.update(bike_params)
      #FeedbackMailer.feedback(@bike).deliver
      redirect_to @bike
    else
      render 'edit'
    end
  end

  def destroy
    @bike = Bike.find(params[:id])
    @bike.destroy
 
    redirect_to bikes_path
  end
 
 private
  def bike_params
    params.require(:bike).permit(:bike_name, :brand, :pictureintro, :picturebike, :bike_type, :year, :cylinder_cc, :power_hp, :weight_kg, :weight_lb, :price_usd,  :intro, :style, :style_mark, :engine, :engine_mark, :handling, :handling_mark, :comfort, :comfort_mark, :value, :value_mark, :conclusion)
  end

end

