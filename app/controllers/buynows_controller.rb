class BuynowsController < ApplicationController
  before_action :set_buynow, only: %i[ show edit update destroy ]

  # GET /buynows or /buynows.json
  def index
    @buynows = Buynow.all
  end

  # GET /buynows/1 or /buynows/1.json
  def show
  end

  # GET /buynows/new
  def new
    @buynow = Buynow.new
  end

  # GET /buynows/1/edit
  def edit
  end

  # POST /buynows or /buynows.json
  def create
    @buynow = Buynow.new(buynow_params)

    respond_to do |format|
      if @buynow.save
        format.html { redirect_to buynow_url(@buynow), notice: "Buynow was successfully created." }
        format.json { render :show, status: :created, location: @buynow }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @buynow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /buynows/1 or /buynows/1.json
  def update
    respond_to do |format|
      if @buynow.update(buynow_params)
        format.html { redirect_to buynow_url(@buynow), notice: "Buynow was successfully updated." }
        format.json { render :show, status: :ok, location: @buynow }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @buynow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buynows/1 or /buynows/1.json
  def destroy
    @buynow.destroy

    respond_to do |format|
      format.html { redirect_to buynows_url, notice: "Buynow was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buynow
      @buynow = Buynow.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def buynow_params
      params.require(:buynow).permit(:address, :pin_code, :phone_number, payments_attributes: [:id, :card_number, :cvv, :exp_date, :_destroy])
    end
end
