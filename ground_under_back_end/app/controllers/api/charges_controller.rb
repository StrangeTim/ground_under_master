class Api::ChargesController < ApplicationController
  before_action :set_charge, only: [:show, :update, :destroy]
  skip_before_filter  :verify_authenticity_token

  # GET /charges
  # GET /charges.json
  def index
    @charges = Charge.all

    render json: @charges
  end

  # GET /charges/1
  # GET /charges/1.json
  def show
    render json: @charge
  end

  # POST /charges
  # POST /charges.json
  def create
    @charge = Charge.new(charge_params)

    if @charge.save
      render json: @charge, status: :created, location: @charge
    else
      render json: @charge.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /charges/1
  # PATCH/PUT /charges/1.json
  def update
    @charge = Charge.find(params[:id])

    if @charge.update(charge_params)
      head :no_content
    else
      render json: @charge.errors, status: :unprocessable_entity
    end
  end

  # DELETE /charges/1
  # DELETE /charges/1.json
  def destroy
    @charge.destroy

    head :no_content
  end

  private

    def set_charge
      @charge = Charge.find(params[:id])
    end

    def charge_params
      params.require(:charge).permit(:amount, :token)
    end
end
