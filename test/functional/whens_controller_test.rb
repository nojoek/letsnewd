require 'test_helper'

class WhensControllerTest < ActionController::TestCase
  setup do
    @when = whens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:whens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create when" do
    assert_difference('When.count') do
      post :create, when: { event_id: @when.event_id, time_option: @when.time_option }
    end

    assert_redirected_to when_path(assigns(:when))
  end

  test "should show when" do
    get :show, id: @when
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @when
    assert_response :success
  end

  test "should update when" do
    put :update, id: @when, when: { event_id: @when.event_id, time_option: @when.time_option }
    assert_redirected_to when_path(assigns(:when))
  end

  test "should destroy when" do
    assert_difference('When.count', -1) do
      delete :destroy, id: @when
    end

    assert_redirected_to whens_path
  end
end
