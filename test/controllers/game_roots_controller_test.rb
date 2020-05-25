require 'test_helper'

class GameRootsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game_root = game_roots(:one)
  end

  test "should get index" do
    get game_roots_url
    assert_response :success
  end

  test "should get new" do
    get new_game_root_url
    assert_response :success
  end

  test "should create game_root" do
    assert_difference('GameRoot.count') do
      post game_roots_url, params: { game_root: { available: @game_root.available, user_id: @game_root.user_id } }
    end

    assert_redirected_to game_root_url(GameRoot.last)
  end

  test "should show game_root" do
    get game_root_url(@game_root)
    assert_response :success
  end

  test "should get edit" do
    get edit_game_root_url(@game_root)
    assert_response :success
  end

  test "should update game_root" do
    patch game_root_url(@game_root), params: { game_root: { available: @game_root.available, user_id: @game_root.user_id } }
    assert_redirected_to game_root_url(@game_root)
  end

  test "should destroy game_root" do
    assert_difference('GameRoot.count', -1) do
      delete game_root_url(@game_root)
    end

    assert_redirected_to game_roots_url
  end
end
