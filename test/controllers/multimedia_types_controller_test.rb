require 'test_helper'

class MultimediaTypesControllerTest < ActionController::TestCase
  setup do
    @multimedium_type = multimedia_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:MultimediumTypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create multimedium_type" do
    assert_difference('MultimediumType.count') do
      post :create, multimedium_type: { media_format: @multimedium_type.media_format, media_type: @multimedium_type.media_type }
    end

    assert_redirected_to multimedia_type_path(assigns(:multimedium_type))
  end

  test "should show multimedium_type" do
    get :show, id: @multimedium_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @multimedium_type
    assert_response :success
  end

  test "should update multimedium_type" do
    patch :update, id: @multimedium_type, multimedium_type: { media_format: @multimedium_type.media_format, media_type: @multimedium_type.media_type }
    assert_redirected_to multimedia_type_path(assigns(:multimedium_type))
  end

  test "should destroy multimedium_type" do
    assert_difference('MultimediumType.count', -1) do
      delete :destroy, id: @multimedium_type
    end

    assert_redirected_to multimedia_types_path
  end
end
