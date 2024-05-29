class PropertiesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_property, only: [:show, :edit, :update, :destroy]

  def index
    @properties = current_user.properties
  end

  def show
  end

  def new
    @property = Property.new
  end

  def create
    @property = current_user.properties.build(property_params)
    if @property.save
      redirect_to @property, notice: 'Property was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    @property.assign_attributes(property_params.except(:photos))
  
    if property_params[:photos].present?
      @property.photos.attach(property_params[:photos])
    end
  
    if @property.save
      redirect_to @property, notice: 'Property was successfully updated.'
    else
      render :edit
    end
  end
  

  def destroy
    @property.destroy
    redirect_to dashboard_path, notice: 'Property was successfully destroyed.'
  end

  private

  def set_property
    @property = Property.find(params[:id])
  end

  def property_params
    params.require(:property).permit(:property_type, :price, :currency, :commune, :address, :area, :bedrooms, :bathrooms, :latitude, :longitude, :description, photos: [])
  end
end
