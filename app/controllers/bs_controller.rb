class BsController < ApplicationController
  before_action :set_b, only: %i[ show edit update destroy ]

  # GET /bs or /bs.json
  def index
    @bs = B.all
  end

  # GET /bs/1 or /bs/1.json
  def show
  end

  # GET /bs/new
  def new
    @b = B.new
  end

  # GET /bs/1/edit
  def edit
  end

  # POST /bs or /bs.json
  def create
    @b = B.new(b_params)

    respond_to do |format|
      if @b.save
        format.html { redirect_to b_url(@b), notice: "B was successfully created." }
        format.json { render :show, status: :created, location: @b }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @b.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bs/1 or /bs/1.json
  def update
    respond_to do |format|
      if @b.update(b_params)
        format.html { redirect_to b_url(@b), notice: "B was successfully updated." }
        format.json { render :show, status: :ok, location: @b }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @b.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bs/1 or /bs/1.json
  def destroy
    @b.destroy

    respond_to do |format|
      format.html { redirect_to bs_url, notice: "B was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_b
      @b = B.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def b_params
      params.require(:b).permit(:address, :cod, :phone_no, :card_number, :cvv, :exp_date)
    end
end
