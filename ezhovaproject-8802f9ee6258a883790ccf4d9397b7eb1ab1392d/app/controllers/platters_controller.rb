class PlattersController < ApplicationController
  before_action :set_platter, only: [:show, :edit, :update, :destroy]

  # GET /platters
  # GET /platters.json
  def index
    @platters = Platter.all
  end

  # GET /platters/1
  # GET /platters/1.json
  def show
  end

  # GET /platters/new
  def new
    @platter = Platter.new
  end

  # GET /platters/1/edit
  def edit
  end

  # POST /platters
  # POST /platters.json
  def create
    @platter = Platter.new(platter_params)

    respond_to do |format|
      if @platter.save
        format.html { redirect_to @platter, notice: 'Platter was successfully created.' }
        format.json { render :show, status: :created, location: @platter }
      else
        format.html { render :new }
        format.json { render json: @platter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /platters/1
  # PATCH/PUT /platters/1.json
  def update
    respond_to do |format|
      if @platter.update(platter_params)
        format.html { redirect_to @platter, notice: 'Platter was successfully updated.' }
        format.json { render :show, status: :ok, location: @platter }
      else
        format.html { render :edit }
        format.json { render json: @platter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /platters/1
  # DELETE /platters/1.json
  def destroy
    @platter.destroy
    respond_to do |format|
      format.html { redirect_to platters_url, notice: 'Platter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_platter
      @platter = Platter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def platter_params
      params.require(:platter).permit(:name, :singer, :year, :genre_id, :image_id, :user_id, :description)
    end
end
