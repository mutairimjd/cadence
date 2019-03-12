require "application_system_test_case"

class UplodeImagesTest < ApplicationSystemTestCase
  setup do
    @uplode_image = uplode_images(:one)
  end

  test "visiting the index" do
    visit uplode_images_url
    assert_selector "h1", text: "Uplode Images"
  end

  test "creating a Uplode image" do
    visit uplode_images_url
    click_on "New Uplode Image"

    fill_in "Image", with: @uplode_image.image
    click_on "Create Uplode image"

    assert_text "Uplode image was successfully created"
    click_on "Back"
  end

  test "updating a Uplode image" do
    visit uplode_images_url
    click_on "Edit", match: :first

    fill_in "Image", with: @uplode_image.image
    click_on "Update Uplode image"

    assert_text "Uplode image was successfully updated"
    click_on "Back"
  end

  test "destroying a Uplode image" do
    visit uplode_images_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Uplode image was successfully destroyed"
  end
end
