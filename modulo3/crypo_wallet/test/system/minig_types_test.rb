require "application_system_test_case"

class MinigTypesTest < ApplicationSystemTestCase
  setup do
    @minig_type = minig_types(:one)
  end

  test "visiting the index" do
    visit minig_types_url
    assert_selector "h1", text: "Minig Types"
  end

  test "creating a Minig type" do
    visit minig_types_url
    click_on "New Minig Type"

    fill_in "Acronym", with: @minig_type.acronym
    fill_in "Name", with: @minig_type.name
    click_on "Create Minig type"

    assert_text "Minig type was successfully created"
    click_on "Back"
  end

  test "updating a Minig type" do
    visit minig_types_url
    click_on "Edit", match: :first

    fill_in "Acronym", with: @minig_type.acronym
    fill_in "Name", with: @minig_type.name
    click_on "Update Minig type"

    assert_text "Minig type was successfully updated"
    click_on "Back"
  end

  test "destroying a Minig type" do
    visit minig_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Minig type was successfully destroyed"
  end
end
