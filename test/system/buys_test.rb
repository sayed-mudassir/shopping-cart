require "application_system_test_case"

class BuysTest < ApplicationSystemTestCase
  setup do
    @buy = buys(:one)
  end

  test "visiting the index" do
    visit buys_url
    assert_selector "h1", text: "Buys"
  end

  test "creating a Buy" do
    visit buys_url
    click_on "New Buy"

    fill_in "Address", with: @buy.address
    fill_in "Card number", with: @buy.card_number
    fill_in "Cvv", with: @buy.cvv
    fill_in "Exp date", with: @buy.exp_date
    fill_in "Phone number", with: @buy.phone_number
    fill_in "Pin code", with: @buy.pin_code
    click_on "Create Buy"

    assert_text "Buy was successfully created"
    click_on "Back"
  end

  test "updating a Buy" do
    visit buys_url
    click_on "Edit", match: :first

    fill_in "Address", with: @buy.address
    fill_in "Card number", with: @buy.card_number
    fill_in "Cvv", with: @buy.cvv
    fill_in "Exp date", with: @buy.exp_date
    fill_in "Phone number", with: @buy.phone_number
    fill_in "Pin code", with: @buy.pin_code
    click_on "Update Buy"

    assert_text "Buy was successfully updated"
    click_on "Back"
  end

  test "destroying a Buy" do
    visit buys_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Buy was successfully destroyed"
  end
end
