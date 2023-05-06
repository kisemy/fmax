class AccchartsController < ApplicationController
  before_action :set_accchart, only: %i[ show edit update destroy ]

  # GET /acccharts or /acccharts.json
  def index
    @acccharts = Accchart.all
  end

  # GET /acccharts/1 or /acccharts/1.json
  def show
  end

  # GET /acccharts/new
  def new
    @accchart = Accchart.new
  end

  # GET /acccharts/1/edit
  def edit
  end

  # POST /acccharts or /acccharts.json
  def create
    @accchart = Accchart.new(accchart_params)

    respond_to do |format|
      if @accchart.save
        format.html { redirect_to accchart_url(@accchart), notice: "Accchart was successfully created." }
        format.json { render :show, status: :created, location: @accchart }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @accchart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /acccharts/1 or /acccharts/1.json
  def update
    respond_to do |format|
      if @accchart.update(accchart_params)
        format.html { redirect_to accchart_url(@accchart), notice: "Accchart was successfully updated." }
        format.json { render :show, status: :ok, location: @accchart }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @accchart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acccharts/1 or /acccharts/1.json
  def destroy
    @accchart.destroy

    respond_to do |format|
      format.html { redirect_to acccharts_url, notice: "Accchart was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accchart
      @accchart = Accchart.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def accchart_params
      params.require(:accchart).permit(:account_name, :type, :categoty, :class, :balance)
    end
end
