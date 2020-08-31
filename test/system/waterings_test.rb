require "application_system_test_case"

class WateringsTest < ApplicationSystemTestCase
  setup do
    @watering = waterings(:one)
  end

  test "visiting the index" do
    visit waterings_url
    assert_selector "h1", text: "Waterings"
  end

  test "creating a Watering" do
    visit waterings_url
    click_on "New Watering"

    fill_in "Minutes", with: @watering.minutes
    fill_in "Plant", with: @watering.plant_id
    fill_in "Volume", with: @watering.volume
    click_on "Create Watering"

    assert_text "Watering was successfully created"
    click_on "Back"
  end

  test "updating a Watering" do
    visit waterings_url
    click_on "Edit", match: :first

    fill_in "Minutes", with: @watering.minutes
    fill_in "Plant", with: @watering.plant_id
    fill_in "Volume", with: @watering.volume
    click_on "Update Watering"

    assert_text "Watering was successfully updated"
    click_on "Back"
  end

  test "destroying a Watering" do
    visit waterings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Watering was successfully destroyed"
  end
end
