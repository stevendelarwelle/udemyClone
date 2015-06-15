class TradesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_course, only: [:new, :create]

  def new
    gon.client = generate_client_token
  end

  def create
    if @course.price > 0
      @result = Braintree::Transaction.sale(
          amount: @course.price,
          payment_method_nonce: params[:payment_method_nonce])
      if @result.success?
        @trade = current_user.buy_course(@course)
        redirect_to course_path(@course), notice: 'You bought the course!'
      else
        flash[:alert] = "Something went wrong while processing your transaction. Please try again!"
        gon.client_token = generate_client_token
        redirect_to new_course_trade_path(@course)
      end
    else
      @trade = current_user.buy_course(@course)
      redirect_to course_path(@course), notice: 'You bought the course!'
    end

  end

  private

  def set_course
    @course = Course.friendly.find(params[:course_id])
  end
  def generate_client_token
    Braintree::ClientToken.generate()
  end
end
