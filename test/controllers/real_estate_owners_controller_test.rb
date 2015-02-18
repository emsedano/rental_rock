require 'test_helper'

class RealEstateOwnersControllerTest < ActionController::TestCase
  setup do
    @real_estate_owner = real_estate_owners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:real_estate_owners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create real_estate_owner" do
    assert_difference('RealEstateOwner.count') do
      post :create, real_estate_owner: { bank_account: @real_estate_owner.bank_account, bank_name: @real_estate_owner.bank_name, clabe: @real_estate_owner.clabe, email: @real_estate_owner.email, firstname: @real_estate_owner.firstname, lastname: @real_estate_owner.lastname, mobile: @real_estate_owner.mobile, notes: @real_estate_owner.notes, phone: @real_estate_owner.phone, secondlastname: @real_estate_owner.secondlastname }
    end

    assert_redirected_to real_estate_owner_path(assigns(:real_estate_owner))
  end

  test "should show real_estate_owner" do
    get :show, id: @real_estate_owner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @real_estate_owner
    assert_response :success
  end

  test "should update real_estate_owner" do
    patch :update, id: @real_estate_owner, real_estate_owner: { bank_account: @real_estate_owner.bank_account, bank_name: @real_estate_owner.bank_name, clabe: @real_estate_owner.clabe, email: @real_estate_owner.email, firstname: @real_estate_owner.firstname, lastname: @real_estate_owner.lastname, mobile: @real_estate_owner.mobile, notes: @real_estate_owner.notes, phone: @real_estate_owner.phone, secondlastname: @real_estate_owner.secondlastname }
    assert_redirected_to real_estate_owner_path(assigns(:real_estate_owner))
  end

  test "should destroy real_estate_owner" do
    assert_difference('RealEstateOwner.count', -1) do
      delete :destroy, id: @real_estate_owner
    end

    assert_redirected_to real_estate_owners_path
  end
end
