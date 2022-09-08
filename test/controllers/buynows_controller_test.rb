require "test_helper"

class BuynowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @buynow = buynows(:one)
  end

  test "should get index" do
    get buynows_url
    assert_response :success
  end

  test "should get new" do
    get new_buynow_url
    assert_response :success
  end

  test "should create buynow" do
    assert_difference('Buynow.count') do
      post buynows_url, params: { buynow: { address: @buynow.address, phone_number: @buynow.phone_number, pin_code: @buynow.pin_code } }
    end

    assert_redirected_to buynow_url(Buynow.last)
  end

  test "should show buynow" do
    get buynow_url(@buynow)
    assert_response :success
  end

  test "should get edit" do
    get edit_buynow_url(@buynow)
    assert_response :success
  end

  test "should update buynow" do
    patch buynow_url(@buynow), params: { buynow: { address: @buynow.address, phone_number: @buynow.phone_number, pin_code: @buynow.pin_code } }
    assert_redirected_to buynow_url(@buynow)
  end

  test "should destroy buynow" do
    assert_difference('Buynow.count', -1) do
      delete buynow_url(@buynow)
    end

    assert_redirected_to buynows_url
  end
end
