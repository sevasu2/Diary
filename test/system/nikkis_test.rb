require "application_system_test_case"

class NikkisTest < ApplicationSystemTestCase
  setup do
    @nikki = nikkis(:one)
  end

  test "visiting the index" do
    visit nikkis_url
    assert_selector "h1", text: "Nikkis"
  end

  test "creating a Nikki" do
    visit nikkis_url
    click_on "New Nikki"

    fill_in "Body", with: @nikki.body
    fill_in "Title", with: @nikki.title
    click_on "Create Nikki"

    assert_text "Nikki was successfully created"
    click_on "Back"
  end

  test "updating a Nikki" do
    visit nikkis_url
    click_on "Edit", match: :first

    fill_in "Body", with: @nikki.body
    fill_in "Title", with: @nikki.title
    click_on "Update Nikki"

    assert_text "Nikki was successfully updated"
    click_on "Back"
  end

  test "destroying a Nikki" do
    visit nikkis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Nikki was successfully destroyed"
  end
end
