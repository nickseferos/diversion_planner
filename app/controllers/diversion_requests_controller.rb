class DiversionRequestsController < ApplicationController
  before_action :set_daily_plan, only: %i[new create]

  def new
    @diversion_request = @daily_plan.diversion_requests.new
  end

  def create
    @diversion_request = @daily_plan.diversion_requests.create!(diversion_request_params)

    respond_to do |format|
      format.html {redirect_to @daily_plan}
    end
  end

  private

  def set_daily_plan
    @daily_plan = DailyPlan.find(params[:daily_plan_id])
  end

  def diversion_request_params
    params.require(:diversion_request).permit(:container_number, :set_asides_required, :current_row, :line_id, :daily_plan_id)
  end


end
