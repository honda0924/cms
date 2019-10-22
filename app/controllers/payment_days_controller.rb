class PaymentDaysController < ApplicationController
  def index
    @payment_days = PaymentDay.all
  end
  def new
    @payment_day = PaymentDay.new
  end
  def create
    PaymentDay.create(date: payment_day_params[:date])
    redirect_to payment_days_path
  end
  def edit
    @payment_day=PaymentDay.find(params[:id])
  end
  def update
    @payment_day=PaymentDay.find(params[:id])
    redirect_to payment_days_path
  end
  def destroy
    @payment_day=PaymentDay.find(params[:id])
    @payment_day.destroy
    redirect_to paymment_days_path
  end

  private

  def payment_day_params
    params.require(:payment_day).permit(:id,:date)
  end
end
