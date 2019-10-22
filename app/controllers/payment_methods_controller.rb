class PaymentMethodsController < ApplicationController
  def index
    @payment_methods = PaymentMethod.all
  end
  def new
    @payment_method = PaymentMethod.new
  end
  def create
    PaymentMethod.create(method: payment_method_params[:method])
    redirect_to payment_methods_path
  end
  def edit
    @payment_method=PaymentMethod.find(params[:id])
  end
  def update
    @payment_method=PaymentMethod.find(params[:id])
    redirect_to payment_methods_path
  end
  def destroy
    @payment_method=PaymentMethod.find(params[:id])
    @payment_method.destroy
    redirect_to payment_methods_path
  end

  private

  def payment_method_params
    params.require(:payment_method).permit(:id,:method)
  end
end
