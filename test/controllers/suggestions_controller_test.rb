require "test_helper"

class SuggestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @suggestion = suggestions(:one)
  end

  test "should get index" do
    get suggestions_url
    assert_response :success
  end

  test "should get new" do
    get new_suggestion_url
    assert_response :success
  end

  test "should create suggestion" do
    assert_difference('Suggestion.count') do
      post suggestions_url, params: { suggestion: { link: @suggestion.link, message: @suggestion.message, title: @suggestion.title } }
    end

    assert_redirected_to suggestion_url(Suggestion.last)
  end

  test "should show suggestion" do
    get suggestion_url(@suggestion)
    assert_response :success
  end

  test "should get edit" do
    get edit_suggestion_url(@suggestion)
    assert_response :success
  end

  test "should update suggestion" do
    patch suggestion_url(@suggestion), params: { suggestion: { link: @suggestion.link, message: @suggestion.message, title: @suggestion.title } }
    assert_redirected_to suggestion_url(@suggestion)
  end

  test "should destroy suggestion" do
    assert_difference('Suggestion.count', -1) do
      delete suggestion_url(@suggestion)
    end

    assert_redirected_to suggestions_url
  end
end
