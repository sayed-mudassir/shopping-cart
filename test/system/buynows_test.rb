require "application_system_test_case"

class BuynowsTest < ApplicationSystemTestCase
  setup do
    @buynow = buynows(:one)
  end

  test "visiting the index" do
    visit buynows_url
    assert_selector "h1", text: "Buynows"
  end

  test "creating a Buynow" do
    visit buynows_url
    click_on "New Buynow"

    fill_in "Address", with: @buynow.address
    fill_in "Phone number", with: @buynow.phone_number
    fill_in "Pin code", with: @buynow.pin_code
    click_on "Create Buynow"

    assert_text "Buynow was successfully created"
    click_on "Back"
  end

  test "updating a Buynow" do
    visit buynows_url
    click_on "Edit", match: :first

    fill_in "Address", with: @buynow.address
    fill_in "Phone number", with: @buynow.phone_number
    fill_in "Pin code", with: @buynow.pin_code
    click_on "Update Buynow"

    assert_text "Buynow was successfully updated"
    click_on "Back"
  end

  test "destroying a Buynow" do
    visit buynows_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Buynow was successfully destroyed"
  end
end
