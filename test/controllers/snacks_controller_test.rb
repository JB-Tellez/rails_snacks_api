require "test_helper"

class SnacksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @snack = snacks(:one)
  end

  test "should get index" do
    get snacks_url, as: :json
    assert_response :success
  end

  test "should create snack" do
    assert_difference("Snack.count") do
      post snacks_url, params: { snack: { description: @snack.description, name: @snack.name } }, as: :json
    end

    assert_response :created
  end

  test "should show snack" do
    get snack_url(@snack), as: :json
    assert_response :success
  end

  test "should update snack" do
    patch snack_url(@snack), params: { snack: { description: @snack.description, name: @snack.name } }, as: :json
    assert_response :success
  end

  test "should destroy snack" do
    assert_difference("Snack.count", -1) do
      delete snack_url(@snack), as: :json
    end

    assert_response :no_content
  end
end
