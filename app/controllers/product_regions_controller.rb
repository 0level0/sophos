class ProductRegionsController < ApplicationController
  before_action :set_price, only: [:show, :edit, :update, :destroy]

  # GET /ProductRegions
  # GET /ProductRegions.json
  def index
    @product_regions = ProductRegion.all
  end

  # GET /ProductRegions/1
  # GET /ProductRegions/1.json
  def show
  end

  # GET /ProductRegions/new
  def new
    @product_region = ProductRegion.new
  end

  # GET /ProductRegions/1/edit
  def edit
  end

  # POST /ProductRegions
  # POST /ProductRegions.json
  def create
    @product_region = ProductRegion.new(price_params)

    respond_to do |format|
      if @product_region.save
        format.html { redirect_to @product_region, notice: 'ProductRegion was successfully created.' }
        format.json { render :show, status: :created, location: @product_region }
      else
        format.html { render :new }
        format.json { render json: @product_region.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ProductRegions/1
  # PATCH/PUT /ProductRegions/1.json
  def update
    respond_to do |format|
      if @product_region.update(price_params)
        format.html { redirect_to @product_region, notice: 'ProductRegion was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_region }
      else
        format.html { render :edit }
        format.json { render json: @product_region.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ProductRegions/1
  # DELETE /ProductRegions/1.json
  def destroy
    @product_region.destroy
    respond_to do |format|
      format.html { redirect_to prices_url, notice: 'ProductRegion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_price
      @product_region = ProductRegion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def price_params
      params.require(:product_region).permit(:product_region)
    end
end
