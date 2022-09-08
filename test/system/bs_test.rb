require "application_system_test_case"

class BsTest < ApplicationSystemTestCase
  setup do
    @b = bs(:one)
  end

  test "visiting the index" do
    visit bs_url
    assert_selector "h1", text: "Bs"
  end

  test "creating a B" do
    visit bs_url
    click_on "New B"

    fill_in "Address", with: @b.address
    fill_in "Card number", with: @b.card_number
    fill_in "Cod", with: @b.cod
    fill_in "Cvv", with: @b.cvv
    fill_in "Exp date", with: @b.exp_date
    fill_in "Phone no", with: @b.phone_no
    click_on "Create B"

    assert_text "B was successfully created"
    click_on "Back"
  end

  test "updating a B" do
    visit bs_url
    click_on "Edit", match: :first

    fill_in "Address", with: @b.address
    fill_in "Card number", with: @b.card_number
    fill_in "Cod", with: @b.cod
    fill_in "Cvv", with: @b.cvv
    fill_in "Exp date", with: @b.exp_date
    fill_in "Phone no", with: @b.phone_no
    click_on "Update B"

    assert_text "B was successfully updated"
    click_on "Back"
  end

  test "destroying a B" do
    visit bs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "B was successfully destroyed"
  end
end
