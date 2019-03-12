require 'test_helper'

class UplodeImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @uplode_image = uplode_images(:one)
  end

  test "should get index" do
    get uplode_images_url
    assert_response :success
  end

  test "should get new" do
    get new_uplode_image_url
    assert_response :success
  end

  test "should create uplode_image" do
    assert_difference('UplodeImage.count') do
      post uplode_images_url, params: { uplode_image: { image: @uplode_image.image } }
    end

    assert_redirected_to uplode_image_url(UplodeImage.last)
  end

  test "should show uplode_image" do
    get uplode_image_url(@uplode_image)
    assert_response :success
  end

  test "should get edit" do
    get edit_uplode_image_url(@uplode_image)
    assert_response :success
  end

  test "should update uplode_image" do
    patch uplode_image_url(@uplode_image), params: { uplode_image: { image: @uplode_image.image } }
    assert_redirected_to uplode_image_url(@uplode_image)
  end

  test "should destroy uplode_image" do
    assert_difference('UplodeImage.count', -1) do
      delete uplode_image_url(@uplode_image)
    end

    assert_redirected_to uplode_images_url
  end
end
