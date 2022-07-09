require "test_helper"

class SelectedTextsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get selected_texts_index_url
    assert_response :success
  end

  test "should get edit" do
    get selected_texts_edit_url
    assert_response :success
  end

  test "should get new" do
    get selected_texts_new_url
    assert_response :success
  end
end
