require 'test_helper'

class FavoritePlayersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @favorite_player = favorite_players(:one)
  end

  test "should get index" do
    get favorite_players_url
    assert_response :success
  end

  test "should get new" do
    get new_favorite_player_url
    assert_response :success
  end

  test "should create favorite_player" do
    assert_difference('FavoritePlayer.count') do
      post favorite_players_url, params: { favorite_player: { Club: @favorite_player.Club, Nationality: @favorite_player.Nationality, Stats: @favorite_player.Stats } }
    end

    assert_redirected_to favorite_player_url(FavoritePlayer.last)
  end

  test "should show favorite_player" do
    get favorite_player_url(@favorite_player)
    assert_response :success
  end

  test "should get edit" do
    get edit_favorite_player_url(@favorite_player)
    assert_response :success
  end

  test "should update favorite_player" do
    patch favorite_player_url(@favorite_player), params: { favorite_player: { Club: @favorite_player.Club, Nationality: @favorite_player.Nationality, Stats: @favorite_player.Stats } }
    assert_redirected_to favorite_player_url(@favorite_player)
  end

  test "should destroy favorite_player" do
    assert_difference('FavoritePlayer.count', -1) do
      delete favorite_player_url(@favorite_player)
    end

    assert_redirected_to favorite_players_url
  end
end
