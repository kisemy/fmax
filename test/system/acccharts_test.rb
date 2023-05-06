require "application_system_test_case"

class AccchartsTest < ApplicationSystemTestCase
  setup do
    @accchart = acccharts(:one)
  end

  test "visiting the index" do
    visit acccharts_url
    assert_selector "h1", text: "Acccharts"
  end

  test "creating a Accchart" do
    visit acccharts_url
    click_on "New Accchart"

    fill_in "Account name", with: @accchart.account_name
    fill_in "Balance", with: @accchart.balance
    fill_in "Categoty", with: @accchart.categoty
    fill_in "Class", with: @accchart.class
    fill_in "Type", with: @accchart.type
    click_on "Create Accchart"

    assert_text "Accchart was successfully created"
    click_on "Back"
  end

  test "updating a Accchart" do
    visit acccharts_url
    click_on "Edit", match: :first

    fill_in "Account name", with: @accchart.account_name
    fill_in "Balance", with: @accchart.balance
    fill_in "Categoty", with: @accchart.categoty
    fill_in "Class", with: @accchart.class
    fill_in "Type", with: @accchart.type
    click_on "Update Accchart"

    assert_text "Accchart was successfully updated"
    click_on "Back"
  end

  test "destroying a Accchart" do
    visit acccharts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Accchart was successfully destroyed"
  end
end
