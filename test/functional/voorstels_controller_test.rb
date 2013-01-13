require 'test_helper'

class VoorstelsControllerTest < ActionController::TestCase
  setup do
    @voorstel = voorstels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:voorstels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create voorstel" do
    assert_difference('Voorstel.count') do
      post :create, voorstel: { content: @voorstel.content, name: @voorstel.name, place: @voorstel.place, time: @voorstel.time }
    end

    assert_redirected_to voorstel_path(assigns(:voorstel))
  end

  test "should show voorstel" do
    get :show, id: @voorstel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @voorstel
    assert_response :success
  end

  test "should update voorstel" do
    put :update, id: @voorstel, voorstel: { content: @voorstel.content, name: @voorstel.name, place: @voorstel.place, time: @voorstel.time }
    assert_redirected_to voorstel_path(assigns(:voorstel))
  end

  test "should destroy voorstel" do
    assert_difference('Voorstel.count', -1) do
      delete :destroy, id: @voorstel
    end

    assert_redirected_to voorstels_path
  end
end
