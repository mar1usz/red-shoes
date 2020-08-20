class Api::ShoesController < ApplicationController
  before_action :set_shoe, only: [:show, :update, :destroy]

  # GET /brands/1/shoes
  def index
    @shoes = Shoe.all
    render json: ShoeSerializer.new(@shoes)
  end

  # GET /brands/1/shoes/2
  def show
    render json: ShoeSerializer.new(@shoe)
  end

  # POST /brands/1/shoes
  def create
    @shoe = Shoe.new(shoe_params_jsonapi)
    if @shoe.save
      render json: ShoeSerializer.new(@shoe), status: :created, location: api_brand_shoe_url(@shoe.brand, @shoe)
    else
      render status: :unprocessable_entity
    end
  end

  # PATCH /brands/1/shoes/2
  def update
    if @shoe.update(shoe_params_jsonapi)
      render json: ShoeSerializer.new(@shoe)
    else
      render status: :unprocessable_entity
    end
  end

  # DELETE /shoes/1
  def destroy
    @shoe.destroy
  end

  private
    def set_shoe
      @shoe = Shoe.find(params[:id])
    end

    def shoe_params_jsonapi
      restify_param(:shoe).require(:shoe).permit(:brand_id, :name, :color, :year)
    end
end
