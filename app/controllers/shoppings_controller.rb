class ShoppingsController < ApplicationController
  before_action :authenticate_user!

  def create
    @shoping = Shopping.new(shoping_params)
    @shopping.user_id = current_user.id
    @shoping.save
    redirect_to products_url
  end

  private

  def shoping_params
    params.require(:shopping).permit(:product_id)
  end
end
