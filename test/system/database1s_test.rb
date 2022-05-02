require "application_system_test_case"

class Database1sTest < ApplicationSystemTestCase
  setup do
    @database1 = database1s(:one)
  end

  test "visiting the index" do
    visit database1s_url
    assert_selector "h1", text: "Database1s"
  end

  test "should create database1" do
    visit database1s_url
    click_on "New database1"

    fill_in "Email", with: @database1.email
    fill_in "First name", with: @database1.first_name
    fill_in "Last name", with: @database1.last_name
    fill_in "Phone", with: @database1.phone
    fill_in "Twitter", with: @database1.twitter
    click_on "Create Database1"

    assert_text "Database1 was successfully created"
    click_on "Back"
  end

  test "should update Database1" do
    visit database1_url(@database1)
    click_on "Edit this database1", match: :first

    fill_in "Email", with: @database1.email
    fill_in "First name", with: @database1.first_name
    fill_in "Last name", with: @database1.last_name
    fill_in "Phone", with: @database1.phone
    fill_in "Twitter", with: @database1.twitter
    click_on "Update Database1"

    assert_text "Database1 was successfully updated"
    click_on "Back"
  end

  test "should destroy Database1" do
    visit database1_url(@database1)
    click_on "Destroy this database1", match: :first

    assert_text "Database1 was successfully destroyed"
  end
end
