require "application_system_test_case"

class VitaminStoresTest < ApplicationSystemTestCase
  setup do
    @vitamin_store = vitamin_stores(:one)
  end

  test "visiting the index" do
    visit vitamin_stores_url
    assert_selector "h1", text: "Vitamin Stores"
  end

  test "creating a Vitamin store" do
    visit vitamin_stores_url
    click_on "New Vitamin Store"

    fill_in "Acti vita c", with: @vitamin_store.acti_vita_c
    fill_in "Acti vita d3", with: @vitamin_store.acti_vita_d3
    fill_in "Acti vita iron", with: @vitamin_store.acti_vita_iron
    fill_in "Day", with: @vitamin_store.day
    fill_in "Vita c", with: @vitamin_store.vita_c
    fill_in "Vita d3", with: @vitamin_store.vita_d3
    fill_in "Vita iron", with: @vitamin_store.vita_iron
    click_on "Create Vitamin store"

    assert_text "Vitamin store was successfully created"
    click_on "Back"
  end

  test "updating a Vitamin store" do
    visit vitamin_stores_url
    click_on "Edit", match: :first

    fill_in "Acti vita c", with: @vitamin_store.acti_vita_c
    fill_in "Acti vita d3", with: @vitamin_store.acti_vita_d3
    fill_in "Acti vita iron", with: @vitamin_store.acti_vita_iron
    fill_in "Day", with: @vitamin_store.day
    fill_in "Vita c", with: @vitamin_store.vita_c
    fill_in "Vita d3", with: @vitamin_store.vita_d3
    fill_in "Vita iron", with: @vitamin_store.vita_iron
    click_on "Update Vitamin store"

    assert_text "Vitamin store was successfully updated"
    click_on "Back"
  end

  test "destroying a Vitamin store" do
    visit vitamin_stores_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vitamin store was successfully destroyed"
  end
end
