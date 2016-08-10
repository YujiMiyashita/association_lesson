class MyNumbersController < ApplicationController
  before_action :authenticate_user!

  def show
    @my_number = MyNumber.find(params[:id])
  end

  # GET /my_numbers/new
  def new
    @my_number = MyNumber.find(current_user.id)
    if @my_number.present?
      redirect_to my_number_url(current_user), notice: 'マイナンバーはすでに登録されています。'
    else
      @my_number = MyNumber.new
    end
  end

  def create
    @my_number = MyNumber.new(my_number_params)
    @my_number.user_id = current_user.id
    if @my_number.save
      redirect_to @my_number, notice: 'マイナンバーを登録しました'
    else
      render 'new'
    end
  end

  private
    def my_number_params
      params.require(:my_number).permit(:number)
    end
end
