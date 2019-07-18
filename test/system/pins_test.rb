require "application_system_test_case"

class PinsTest < ApplicationSystemTestCase
  setup do
    @pin = pins(:one)
  end

  test "visiting the index" do
    visit pins_url
    assert_selector "h1", text: "Pictures"
  end

  test "creating a Picture" do
    visit pins_url
    click_on "New Picture"

    fill_in "Description", with: @pin.description
    fill_in "Owner", with: @pin.owner
    click_on "Add Picture"

    assert_text "Picture was successfully created"
    click_on "Back"
  end

  test "updating a Picture" do
    visit pins_url
    click_on "Edit", match: :first

    fill_in "Description", with: @pin.description
    fill_in "Owner", with: @pin.owner
    click_on "Update Picture"

    assert_text "Picture was successfully updated"
    click_on "Back"
  end

  test "destroying a Picture" do
    visit pins_url
    page.accept_confirm do
      click_on "Delete", match: :first
    end

    assert_text "Picture was successfully deleted"
  end
end
