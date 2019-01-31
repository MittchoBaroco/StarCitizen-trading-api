class PriceReportsController < ApplicationController
  before_action :set_price_report, only: [:show, :update, :destroy]

  # GET /price_reports
  def index
    @price_reports = PriceReport.all

    render json: @price_reports
  end

  # GET /price_reports/1
  def show
    render json: @price_report
  end

  # POST /price_reports
  def create
    @price_report = PriceReport.new(price_report_params)

    if @price_report.save
      render json: @price_report, status: :created, location: @price_report
    else
      render json: @price_report.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /price_reports/1
  def update
    if @price_report.update(price_report_params)
      render json: @price_report
    else
      render json: @price_report.errors, status: :unprocessable_entity
    end
  end

  # DELETE /price_reports/1
  def destroy
    @price_report.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_price_report
      @price_report = PriceReport.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def price_report_params
      params.require(:price_report).permit(:report_type, :price, :good_id, :location_id)
    end
end
