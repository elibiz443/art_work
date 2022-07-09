require "test_helper"

class ArtTextControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get art_text_edit_url
    assert_response :success
  end

  test "should get new" do
    get art_text_new_url
    assert_response :success
  end

  test "should get index" do
    get art_text_index_url
    assert_response :success
  end
end
