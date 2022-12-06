class HalfLivesController < ApplicationController
  before_action :authenticate_and_set_user, only: [:create, :update, :destroy]
  before_action :set_half_life, only: %i[ show update destroy ]

  # GET /half_lives
  def index
    @half_lives = HalfLife.all

    render json: @half_lives
  end

  # GET /half_lives/1
  def show
    render json: @half_life
  end

  # POST /half_lives
  def create
    @half_life = HalfLife.new(half_life_params)

    if @half_life.save
      render json: @half_life, status: :created, location: @half_life
    else
      render json: @half_life.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /half_lives/1
  def update
    if @half_life.update(half_life_params)
      render json: @half_life
    else
      render json: @half_life.errors, status: :unprocessable_entity
    end
  end

  # DELETE /half_lives/1
  def destroy
    @half_life.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_half_life
      @half_life = HalfLife.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def half_life_params
      params.require(:half_life).permit(:character, :enemy, :location)
    end
end
