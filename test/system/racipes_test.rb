require "application_system_test_case"

class RacipesTest < ApplicationSystemTestCase
  setup do
    @racipe = racipes(:one)
  end

  test "visiting the index" do
    visit racipes_url
    assert_selector "h1", text: "Racipes"
  end

  test "should create racipe" do
    visit racipes_url
    click_on "New racipe"

    fill_in "Description", with: @racipe.description
    fill_in "Title", with: @racipe.title
    click_on "Create Racipe"

    assert_text "Racipe was successfully created"
    click_on "Back"
  end

  test "should update Racipe" do
    visit racipe_url(@racipe)
    click_on "Edit this racipe", match: :first

    fill_in "Description", with: @racipe.description
    fill_in "Title", with: @racipe.title
    click_on "Update Racipe"

    assert_text "Racipe was successfully updated"
    click_on "Back"
  end

  test "should destroy Racipe" do
    visit racipe_url(@racipe)
    click_on "Destroy this racipe", match: :first

    assert_text "Racipe was successfully destroyed"
  end
end
