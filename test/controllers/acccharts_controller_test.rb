require "test_helper"

class AccchartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @accchart = acccharts(:one)
  end

  test "should get index" do
    get acccharts_url
    assert_response :success
  end

  test "should get new" do
    get new_accchart_url
    assert_response :success
  end

  test "should create accchart" do
    assert_difference('Accchart.count') do
      post acccharts_url, params: { accchart: { account_name: @accchart.account_name, balance: @accchart.balance, categoty: @accchart.categoty, class: @accchart.class, type: @accchart.type } }
    end

    assert_redirected_to accchart_url(Accchart.last)
  end

  test "should show accchart" do
    get accchart_url(@accchart)
    assert_response :success
  end

  test "should get edit" do
    get edit_accchart_url(@accchart)
    assert_response :success
  end

  test "should update accchart" do
    patch accchart_url(@accchart), params: { accchart: { account_name: @accchart.account_name, balance: @accchart.balance, categoty: @accchart.categoty, class: @accchart.class, type: @accchart.type } }
    assert_redirected_to accchart_url(@accchart)
  end

  test "should destroy accchart" do
    assert_difference('Accchart.count', -1) do
      delete accchart_url(@accchart)
    end

    assert_redirected_to acccharts_url
  end
end
