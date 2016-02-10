require 'test_helper'

class ConfUsersControllerTest < ActionController::TestCase
  setup do
    @conf_user = conf_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:conf_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create conf_user" do
    assert_difference('ConfUser.count') do
      post :create, conf_user: { color_1: @conf_user.color_1, color_2: @conf_user.color_2, name: @conf_user.name, slogan: @conf_user.slogan }
    end

    assert_redirected_to conf_user_path(assigns(:conf_user))
  end

  test "should show conf_user" do
    get :show, id: @conf_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @conf_user
    assert_response :success
  end

  test "should update conf_user" do
    patch :update, id: @conf_user, conf_user: { color_1: @conf_user.color_1, color_2: @conf_user.color_2, name: @conf_user.name, slogan: @conf_user.slogan }
    assert_redirected_to conf_user_path(assigns(:conf_user))
  end

  test "should destroy conf_user" do
    assert_difference('ConfUser.count', -1) do
      delete :destroy, id: @conf_user
    end

    assert_redirected_to conf_users_path
  end
end
