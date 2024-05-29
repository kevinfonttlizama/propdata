class HomeController < ApplicationController
  def index
    @properties = Property.all

    if params[:min_price].present?
      @properties = @properties.where('price >= ?', params[:min_price])
    end

    if params[:max_price].present?
      @properties = @properties.where('price <= ?', params[:max_price])
    end

    if params[:bedrooms].present?
      @properties = @properties.where('bedrooms >= ?', params[:bedrooms])
    end

    if params[:commune].present?
      @properties = @properties.where(commune: params[:commune])
    end

    @properties = @properties.page(params[:page]).per(3)
  end
end
