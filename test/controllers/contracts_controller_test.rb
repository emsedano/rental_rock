require 'test_helper'

class ContractsControllerTest < ActionController::TestCase
  setup do
    @contract = contracts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contracts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contract" do
    assert_difference('Contract.count') do
      post :create, contract: { amount: @contract.amount, deposit: @contract.deposit, ending_date: @contract.ending_date, first_payment_date: @contract.first_payment_date, payment_period: @contract.payment_period, real_estate_id: @contract.real_estate_id, renter_id: @contract.renter_id, start_date: @contract.start_date }
    end

    assert_redirected_to contract_path(assigns(:contract))
  end

  test "should show contract" do
    get :show, id: @contract
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contract
    assert_response :success
  end

  test "should update contract" do
    patch :update, id: @contract, contract: { amount: @contract.amount, deposit: @contract.deposit, ending_date: @contract.ending_date, first_payment_date: @contract.first_payment_date, payment_period: @contract.payment_period, real_estate_id: @contract.real_estate_id, renter_id: @contract.renter_id, start_date: @contract.start_date }
    assert_redirected_to contract_path(assigns(:contract))
  end

  test "should destroy contract" do
    assert_difference('Contract.count', -1) do
      delete :destroy, id: @contract
    end

    assert_redirected_to contracts_path
  end
end
