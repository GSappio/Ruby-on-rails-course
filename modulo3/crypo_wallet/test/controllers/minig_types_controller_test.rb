require "test_helper"

class MinigTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @minig_type = minig_types(:one)
  end

  test "should get index" do
    get minig_types_url
    assert_response :success
  end

  test "should get new" do
    get new_minig_type_url
    assert_response :success
  end

  test "should create minig_type" do
    assert_difference('MinigType.count') do
      post minig_types_url, params: { minig_type: { acronym: @minig_type.acronym, name: @minig_type.name } }
    end

    assert_redirected_to minig_type_url(MinigType.last)
  end

  test "should show minig_type" do
    get minig_type_url(@minig_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_minig_type_url(@minig_type)
    assert_response :success
  end

  test "should update minig_type" do
    patch minig_type_url(@minig_type), params: { minig_type: { acronym: @minig_type.acronym, name: @minig_type.name } }
    assert_redirected_to minig_type_url(@minig_type)
  end

  test "should destroy minig_type" do
    assert_difference('MinigType.count', -1) do
      delete minig_type_url(@minig_type)
    end

    assert_redirected_to minig_types_url
  end
end
