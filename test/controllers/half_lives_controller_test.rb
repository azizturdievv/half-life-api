require "test_helper"

class HalfLivesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @half_life = half_lives(:one)
  end

  test "should get index" do
    get half_lives_url, as: :json
    assert_response :success
  end

  test "should create half_life" do
    assert_difference("HalfLife.count") do
      post half_lives_url, params: { half_life: { character: @half_life.character, enemy: @half_life.enemy, location: @half_life.location } }, as: :json
    end

    assert_response :created
  end

  test "should show half_life" do
    get half_life_url(@half_life), as: :json
    assert_response :success
  end

  test "should update half_life" do
    patch half_life_url(@half_life), params: { half_life: { character: @half_life.character, enemy: @half_life.enemy, location: @half_life.location } }, as: :json
    assert_response :success
  end

  test "should destroy half_life" do
    assert_difference("HalfLife.count", -1) do
      delete half_life_url(@half_life), as: :json
    end

    assert_response :no_content
  end
end
