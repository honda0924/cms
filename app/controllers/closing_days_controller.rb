class ClosingDaysController < ApplicationController
  def index
    @closing_days = ClosingDay.all
  end
  def new
    @closing_day = ClosingDay.new
  end
  def create
    ClosingDay.create(date: closing_day_params[:date])
    redirect_to closing_days_path
  end
  def edit
    @closing_day=ClosingDay.find(params[:id])
  end
  def update
    @closing_day=ClosingDay.find(params[:id])
    redirect_to closing_days_path
  end
  def destroy
    @closing_day=ClosingDay.find(params[:id])
    @closing_day.destroy
    redirect_to closing_days_path
  end

  private

  def closing_day_params
    params.require(:closing_day).permit(:id,:date)
  end
end
