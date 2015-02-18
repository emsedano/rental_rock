require 'test_helper'

class AddressesControllerTest < ActionController::TestCase
  setup do
    @address = addresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:addresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create address" do
    assert_difference('Address.count') do
      post :create, address: { address1: @address.address1, address2: @address.address2, country_id: @address.country_id, county_id: @address.county_id, neiborghood: @address.neiborghood, related_subject_id: @address.related_subject_id, related_subject_type: @address.related_subject_type, state_id: @address.state_id, zipcode: @address.zipcode }
    end

    assert_redirected_to address_path(assigns(:address))
  end

  test "should show address" do
    get :show, id: @address
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @address
    assert_response :success
  end

  test "should update address" do
    patch :update, id: @address, address: { address1: @address.address1, address2: @address.address2, country_id: @address.country_id, county_id: @address.county_id, neiborghood: @address.neiborghood, related_subject_id: @address.related_subject_id, related_subject_type: @address.related_subject_type, state_id: @address.state_id, zipcode: @address.zipcode }
    assert_redirected_to address_path(assigns(:address))
  end

  test "should destroy address" do
    assert_difference('Address.count', -1) do
      delete :destroy, id: @address
    end

    assert_redirected_to addresses_path
  end
end
