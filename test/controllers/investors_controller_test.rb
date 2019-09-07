require 'test_helper'

class InvestorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @investor = investors(:one)
  end

  test "should get index" do
    get investors_url, as: :json
    assert_response :success
  end

  test "should create investor" do
    assert_difference('Investor.count') do
      post investors_url, params: { investor: { business_funds: @investor.business_funds, city: @investor.city, email: @investor.email, first_name: @investor.first_name, ira_funds: @investor.ira_funds, last_name: @investor.last_name, length_terms: @investor.length_terms, liquid_funds: @investor.liquid_funds, payments: @investor.payments, personal_funds: @investor.personal_funds, phone: @investor.phone, state: @investor.state, street_address: @investor.street_address, zip: @investor.zip } }, as: :json
    end

    assert_response 201
  end

  test "should show investor" do
    get investor_url(@investor), as: :json
    assert_response :success
  end

  test "should update investor" do
    patch investor_url(@investor), params: { investor: { business_funds: @investor.business_funds, city: @investor.city, email: @investor.email, first_name: @investor.first_name, ira_funds: @investor.ira_funds, last_name: @investor.last_name, length_terms: @investor.length_terms, liquid_funds: @investor.liquid_funds, payments: @investor.payments, personal_funds: @investor.personal_funds, phone: @investor.phone, state: @investor.state, street_address: @investor.street_address, zip: @investor.zip } }, as: :json
    assert_response 200
  end

  test "should destroy investor" do
    assert_difference('Investor.count', -1) do
      delete investor_url(@investor), as: :json
    end

    assert_response 204
  end
end
