require 'test_helper'

class MyNumbersControllerTest < ActionController::TestCase
  setup do
    @my_number = my_numbers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my_numbers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my_number" do
    assert_difference('MyNumber.count') do
      post :create, my_number: { number: @my_number.number, user_id: @my_number.user_id }
    end

    assert_redirected_to my_number_path(assigns(:my_number))
  end

  test "should show my_number" do
    get :show, id: @my_number
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @my_number
    assert_response :success
  end

  test "should update my_number" do
    patch :update, id: @my_number, my_number: { number: @my_number.number, user_id: @my_number.user_id }
    assert_redirected_to my_number_path(assigns(:my_number))
  end

  test "should destroy my_number" do
    assert_difference('MyNumber.count', -1) do
      delete :destroy, id: @my_number
    end

    assert_redirected_to my_numbers_path
  end
end
