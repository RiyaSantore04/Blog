require "application_system_test_case"

class InstaTest < ApplicationSystemTestCase
  setup do
    @instum = insta(:one)
  end

  test "visiting the index" do
    visit insta_url
    assert_selector "h1", text: "Insta"
  end

  test "creating a Instum" do
    visit insta_url
    click_on "New Instum"

    fill_in "Body", with: @instum.body
    fill_in "Title", with: @instum.title
    click_on "Create Instum"

    assert_text "Instum was successfully created"
    click_on "Back"
  end

  test "updating a Instum" do
    visit insta_url
    click_on "Edit", match: :first

    fill_in "Body", with: @instum.body
    fill_in "Title", with: @instum.title
    click_on "Update Instum"

    assert_text "Instum was successfully updated"
    click_on "Back"
  end

  test "destroying a Instum" do
    visit insta_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Instum was successfully destroyed"
  end
end
