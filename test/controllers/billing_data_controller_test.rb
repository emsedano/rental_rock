require 'test_helper'

class BillingDataControllerTest < ActionController::TestCase
  setup do
    @billing_datum = billing_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:billing_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create billing_datum" do
    assert_difference('BillingDatum.count') do
      post :create, billing_datum: { : @billing_datum., address1: @billing_datum.address1, address2: @billing_datum.address2, country_id: @billing_datum.country_id, county: @billing_datum.county, fiscal_name: @billing_datum.fiscal_name, fiscal_person: @billing_datum.fiscal_person, neiborghood: @billing_datum.neiborghood, rfc: @billing_datum.rfc, zipcode: @billing_datum.zipcode }
    end

    assert_redirected_to billing_datum_path(assigns(:billing_datum))
  end

  test "should show billing_datum" do
    get :show, id: @billing_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @billing_datum
    assert_response :success
  end

  test "should update billing_datum" do
    patch :update, id: @billing_datum, billing_datum: { : @billing_datum., address1: @billing_datum.address1, address2: @billing_datum.address2, country_id: @billing_datum.country_id, county: @billing_datum.county, fiscal_name: @billing_datum.fiscal_name, fiscal_person: @billing_datum.fiscal_person, neiborghood: @billing_datum.neiborghood, rfc: @billing_datum.rfc, zipcode: @billing_datum.zipcode }
    assert_redirected_to billing_datum_path(assigns(:billing_datum))
  end

  test "should destroy billing_datum" do
    assert_difference('BillingDatum.count', -1) do
      delete :destroy, id: @billing_datum
    end

    assert_redirected_to billing_data_path
  end
end
