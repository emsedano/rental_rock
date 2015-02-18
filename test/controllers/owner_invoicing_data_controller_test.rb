require 'test_helper'

class OwnerInvoicingDataControllerTest < ActionController::TestCase
  setup do
    @owner_invoicing_datum = owner_invoicing_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:owner_invoicing_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create owner_invoicing_datum" do
    assert_difference('OwnerInvoicingDatum.count') do
      post :create, owner_invoicing_datum: { : @owner_invoicing_datum., address1: @owner_invoicing_datum.address1, address2: @owner_invoicing_datum.address2, country_id: @owner_invoicing_datum.country_id, county: @owner_invoicing_datum.county, fiscal_name: @owner_invoicing_datum.fiscal_name, fiscal_person: @owner_invoicing_datum.fiscal_person, neiborghood: @owner_invoicing_datum.neiborghood, owner_id: @owner_invoicing_datum.owner_id, rfc: @owner_invoicing_datum.rfc, zipcode: @owner_invoicing_datum.zipcode }
    end

    assert_redirected_to owner_invoicing_datum_path(assigns(:owner_invoicing_datum))
  end

  test "should show owner_invoicing_datum" do
    get :show, id: @owner_invoicing_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @owner_invoicing_datum
    assert_response :success
  end

  test "should update owner_invoicing_datum" do
    patch :update, id: @owner_invoicing_datum, owner_invoicing_datum: { : @owner_invoicing_datum., address1: @owner_invoicing_datum.address1, address2: @owner_invoicing_datum.address2, country_id: @owner_invoicing_datum.country_id, county: @owner_invoicing_datum.county, fiscal_name: @owner_invoicing_datum.fiscal_name, fiscal_person: @owner_invoicing_datum.fiscal_person, neiborghood: @owner_invoicing_datum.neiborghood, owner_id: @owner_invoicing_datum.owner_id, rfc: @owner_invoicing_datum.rfc, zipcode: @owner_invoicing_datum.zipcode }
    assert_redirected_to owner_invoicing_datum_path(assigns(:owner_invoicing_datum))
  end

  test "should destroy owner_invoicing_datum" do
    assert_difference('OwnerInvoicingDatum.count', -1) do
      delete :destroy, id: @owner_invoicing_datum
    end

    assert_redirected_to owner_invoicing_data_path
  end
end
