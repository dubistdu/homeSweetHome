class HomesController < ApplicationController
  before_action :authenticate!, except: [:index]

  # GET /homes
  def index
    @homes = Home.all.order("created_at DESC")
  end

  # GET /homes/1
  def show
    @home = Home.find(params[:id])
  end

  # GET /homes/new
  def new
    @home = Home.new
  end

  # GET /homes/1/edit
  def edit
    @home = Home.find(params[:id])
  end

  # POST /homes
  def create
    @home = Home.new(home_params)

    if @home.save
      redirect_to @home, notice: 'Home was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /homes/1
  def update
    @home = Home.find(params[:id])
    if @home.update(home_params)
      redirect_to @home, notice: 'Home was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /homes/1
  def destroy
    @home = Home.find(params[:id])
    @home.destroy
    redirect_to homes_url, notice: 'Home was successfully destroyed.'
  end

  private
    # Only allow a trusted parameter "white list" through.
    def home_params
      params.require(:home).permit(:address, :description, :number_of_bedrooms, :number_of_bathrooms, :square_foot, :price, :swimming_pool, :parking_garage, :parking_garage_type, :parking_garage_size, :image, :images_id, :agent_id)
    end
end
