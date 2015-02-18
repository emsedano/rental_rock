require 'test_helper'

class RealEstatesControllerTest < ActionController::TestCase
  setup do
    @real_estate = real_estates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:real_estates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create real_estate" do
    assert_difference('RealEstate.count') do
      post :create, real_estate: { area: @real_estate.area, bathrooms: @real_estate.bathrooms, build_date: @real_estate.build_date, description: @real_estate.description, location: @real_estate.location, name: @real_estate.name, predial: @real_estate.predial, property_type: @real_estate.property_type, real_estate_owner_id: @real_estate.real_estate_owner_id, rooms: @real_estate.rooms, status: @real_estate.status }
    end

    assert_redirected_to real_estate_path(assigns(:real_estate))
  end

  test "should show real_estate" do
    get :show, id: @real_estate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @real_estate
    assert_response :success
  end

  test "should update real_estate" do
    patch :update, id: @real_estate, real_estate: { area: @real_estate.area, bathrooms: @real_estate.bathrooms, build_date: @real_estate.build_date, description: @real_estate.description, location: @real_estate.location, name: @real_estate.name, predial: @real_estate.predial, property_type: @real_estate.property_type, real_estate_owner_id: @real_estate.real_estate_owner_id, rooms: @real_estate.rooms, status: @real_estate.status }
    assert_redirected_to real_estate_path(assigns(:real_estate))
  end

  test "should destroy real_estate" do
    assert_difference('RealEstate.count', -1) do
      delete :destroy, id: @real_estate
    end

    assert_redirected_to real_estates_path
  end
end
