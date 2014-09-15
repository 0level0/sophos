class MultimediumTypesController < ApplicationController
  before_action :set_multimedia_type, only: [:show, :edit, :update, :destroy]

  # GET /MultimediumTypes
  # GET /MultimediumTypes.json
  def index
    @multimedium_types = MultimediumType.all
  end

  # GET /MultimediumTypes/1
  # GET /MultimediumTypes/1.json
  def show
  end

  # GET /MultimediumTypes/new
  def new
    @multimedium_type = MultimediumType.new
  end

  # GET /MultimediumTypes/1/edit
  def edit
  end

  # POST /MultimediumTypes
  # POST /MultimediumTypes.json
  def create
    @multimedium_type = MultimediumType.new(multimedia_type_params)

    respond_to do |format|
      if @multimedium_type.save
        format.html { redirect_to @multimedium_type, notice: 'Multimedia type was successfully created.' }
        format.json { render :show, status: :created, location: @multimedium_type }
      else
        format.html { render :new }
        format.json { render json: @multimedium_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /MultimediumTypes/1
  # PATCH/PUT /MultimediumTypes/1.json
  def update
    respond_to do |format|
      if @multimedium_type.update(multimedia_type_params)
        format.html { redirect_to @multimedium_type, notice: 'Multimedia type was successfully updated.' }
        format.json { render :show, status: :ok, location: @multimedium_type }
      else
        format.html { render :edit }
        format.json { render json: @multimedium_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /MultimediumTypes/1
  # DELETE /MultimediumTypes/1.json
  def destroy
    @multimedium_type.destroy
    respond_to do |format|
      format.html { redirect_to multimedia_types_url, notice: 'Multimedia type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_multimedia_type
      @multimedium_type = MultimediumType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def multimedia_type_params
      params.require(:multimedium_type).permit(:media_type, :media_format)
    end
end
