require 'test_helper'

class JobOppertunitiesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:job_oppertunities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job_oppertunity" do
    assert_difference('JobOppertunity.count') do
      post :create, :job_oppertunity => { }
    end

    assert_redirected_to job_oppertunity_path(assigns(:job_oppertunity))
  end

  test "should show job_oppertunity" do
    get :show, :id => job_oppertunities(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => job_oppertunities(:one).to_param
    assert_response :success
  end

  test "should update job_oppertunity" do
    put :update, :id => job_oppertunities(:one).to_param, :job_oppertunity => { }
    assert_redirected_to job_oppertunity_path(assigns(:job_oppertunity))
  end

  test "should destroy job_oppertunity" do
    assert_difference('JobOppertunity.count', -1) do
      delete :destroy, :id => job_oppertunities(:one).to_param
    end

    assert_redirected_to job_oppertunities_path
  end
end
