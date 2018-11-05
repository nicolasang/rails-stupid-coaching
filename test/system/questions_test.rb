require "application_system_test_case"
# require 'capybara'

class QuestionsTest < ApplicationSystemTestCase

  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "p", text: "Ask your coach anything!"
  end

  # take_screenshot # the equivalent of binding.pry

  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "answer_input", with: "Hello"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
  end

  # take_screenshot

end
