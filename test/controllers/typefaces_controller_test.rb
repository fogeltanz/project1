require 'test_helper'

class TypefacesControllerTest < ActionController::TestCase
  setup do
    @typeface = typefaces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:typefaces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create typeface" do
    assert_difference('Typeface.count') do
      post :create, typeface: { designer: @typeface.designer, familyname: @typeface.familyname, year: @typeface.year }
    end

    assert_redirected_to typeface_path(assigns(:typeface))
  end

  test "should show typeface" do
    get :show, id: @typeface
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @typeface
    assert_response :success
  end

  test "should update typeface" do
    patch :update, id: @typeface, typeface: { designer: @typeface.designer, familyname: @typeface.familyname, year: @typeface.year }
    assert_redirected_to typeface_path(assigns(:typeface))
  end

  test "should destroy typeface" do
    assert_difference('Typeface.count', -1) do
      delete :destroy, id: @typeface
    end

    assert_redirected_to typefaces_path
  end
end
