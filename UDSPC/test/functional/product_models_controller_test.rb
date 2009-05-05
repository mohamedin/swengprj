require 'test_helper'

class ProductModelsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_models)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_model" do
    assert_difference('ProductModel.count') do
      post :create, :product_model => { }
    end

    assert_redirected_to product_model_path(assigns(:product_model))
  end

  test "should show product_model" do
    get :show, :id => product_models(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => product_models(:one).to_param
    assert_response :success
  end

  test "should update product_model" do
    put :update, :id => product_models(:one).to_param, :product_model => { }
    assert_redirected_to product_model_path(assigns(:product_model))
  end

  test "should destroy product_model" do
    assert_difference('ProductModel.count', -1) do
      delete :destroy, :id => product_models(:one).to_param
    end

    assert_redirected_to product_models_path
  end
end
