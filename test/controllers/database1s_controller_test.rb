require "test_helper"

class Database1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @database1 = database1s(:one)
  end

  test "should get index" do
    get database1s_url
    assert_response :success
  end

  test "should get new" do
    get new_database1_url
    assert_response :success
  end

  test "should create database1" do
    assert_difference("Database1.count") do
      post database1s_url, params: { database1: { email: @database1.email, first_name: @database1.first_name, last_name: @database1.last_name, phone: @database1.phone, twitter: @database1.twitter } }
    end

    assert_redirected_to database1_url(Database1.last)
  end

  test "should show database1" do
    get database1_url(@database1)
    assert_response :success
  end

  test "should get edit" do
    get edit_database1_url(@database1)
    assert_response :success
  end

  test "should update database1" do
    patch database1_url(@database1), params: { database1: { email: @database1.email, first_name: @database1.first_name, last_name: @database1.last_name, phone: @database1.phone, twitter: @database1.twitter } }
    assert_redirected_to database1_url(@database1)
  end

  test "should destroy database1" do
    assert_difference("Database1.count", -1) do
      delete database1_url(@database1)
    end

    assert_redirected_to database1s_url
  end
end
