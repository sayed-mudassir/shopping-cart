require "test_helper"

class BsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @b = bs(:one)
  end

  test "should get index" do
    get bs_url
    assert_response :success
  end

  test "should get new" do
    get new_b_url
    assert_response :success
  end

  test "should create b" do
    assert_difference('B.count') do
      post bs_url, params: { b: { address: @b.address, card_number: @b.card_number, cod: @b.cod, cvv: @b.cvv, exp_date: @b.exp_date, phone_no: @b.phone_no } }
    end

    assert_redirected_to b_url(B.last)
  end

  test "should show b" do
    get b_url(@b)
    assert_response :success
  end

  test "should get edit" do
    get edit_b_url(@b)
    assert_response :success
  end

  test "should update b" do
    patch b_url(@b), params: { b: { address: @b.address, card_number: @b.card_number, cod: @b.cod, cvv: @b.cvv, exp_date: @b.exp_date, phone_no: @b.phone_no } }
    assert_redirected_to b_url(@b)
  end

  test "should destroy b" do
    assert_difference('B.count', -1) do
      delete b_url(@b)
    end

    assert_redirected_to bs_url
  end
end
