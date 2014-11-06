require 'test_helper'

class QyAccountsControllerTest < ActionController::TestCase
  setup do
    @qy_account = qy_accounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:qy_accounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create qy_account" do
    assert_difference('QyAccount.count') do
      post :create, qy_account: {  }
    end

    assert_redirected_to qy_account_path(assigns(:qy_account))
  end

  test "should show qy_account" do
    get :show, id: @qy_account
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @qy_account
    assert_response :success
  end

  test "should update qy_account" do
    patch :update, id: @qy_account, qy_account: {  }
    assert_redirected_to qy_account_path(assigns(:qy_account))
  end

  test "should destroy qy_account" do
    assert_difference('QyAccount.count', -1) do
      delete :destroy, id: @qy_account
    end

    assert_redirected_to qy_accounts_path
  end
end
