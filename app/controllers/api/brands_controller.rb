class Api::BrandsController < ApplicationController
  before_action :set_brand, only: [:show, :update, :destroy]

  def index
    @brands = Brand.all
    render json: BrandSerializer.new(@brands)
  end

  def show
    render json: BrandSerializer.new(@brand)
  end

  def create
    @brand = Brand.new(brand_params_jsonapi)
    if @brand.save
      render json: BrandSerializer.new(@brand), status: :created, location: api_brand_url(@brand)
    else
      render status: :unprocessable_entity
    end
  end

  def update
    if @brand.update(brand_params_jsonapi)
      render json: BrandSerializer.new(@brand)
    else
      render status: :unprocessable_entity
    end
  end

  def destroy
    @brand.destroy
  end

  private
    def set_brand
      @brand = Brand.find(params[:id])
    end

    def brand_params_jsonapi
      restify_param(:brand).require(:brand).permit(:name)
    end
end
