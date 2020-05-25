require "application_system_test_case"

class GameRootsTest < ApplicationSystemTestCase
  setup do
    @game_root = game_roots(:one)
  end

  test "visiting the index" do
    visit game_roots_url
    assert_selector "h1", text: "Game Roots"
  end

  test "creating a Game root" do
    visit game_roots_url
    click_on "New Game Root"

    fill_in "Available", with: @game_root.available
    fill_in "User", with: @game_root.user_id
    click_on "Create Game root"

    assert_text "Game root was successfully created"
    click_on "Back"
  end

  test "updating a Game root" do
    visit game_roots_url
    click_on "Edit", match: :first

    fill_in "Available", with: @game_root.available
    fill_in "User", with: @game_root.user_id
    click_on "Update Game root"

    assert_text "Game root was successfully updated"
    click_on "Back"
  end

  test "destroying a Game root" do
    visit game_roots_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Game root was successfully destroyed"
  end
end
