class DailyPlansController < ApplicationController
  before_action :set_daily_plan, only: %i[ show edit update destroy ]

  # GET /daily_plans or /daily_plans.json
  def index
    @daily_plans = DailyPlan.all
  end

  # GET /daily_plans/1 or /daily_plans/1.json
  def show
  end

  # GET /daily_plans/new
  def new
    @daily_plan = DailyPlan.new
  end

  # GET /daily_plans/1/edit
  def edit
  end

  # POST /daily_plans or /daily_plans.json
  def create
    @daily_plan = DailyPlan.new(daily_plan_params)

    respond_to do |format|
      if @daily_plan.save
        format.html { redirect_to @daily_plan, notice: "Daily plan was successfully created." }
        format.json { render :show, status: :created, location: @daily_plan }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @daily_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daily_plans/1 or /daily_plans/1.json
  def update
    respond_to do |format|
      if @daily_plan.update(daily_plan_params)
        format.html { redirect_to @daily_plan, notice: "Daily plan was successfully updated." }
        format.json { render :show, status: :ok, location: @daily_plan }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @daily_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_plans/1 or /daily_plans/1.json
  def destroy
    @daily_plan.destroy
    respond_to do |format|
      format.html { redirect_to daily_plans_url, notice: "Daily plan was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daily_plan
      @daily_plan = DailyPlan.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def daily_plan_params
      params.require(:daily_plan).permit(:date)
    end
end
