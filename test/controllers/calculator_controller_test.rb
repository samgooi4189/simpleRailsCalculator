require 'test_helper'

class CalculatorControllerTest < ActionDispatch::IntegrationTest
  test "should get welcome" do
    get calculator_welcome_url
    assert_response :success
  end

  test "should get calculate" do
    get calculator_calculate_url
    assert_response :success
  end

  test "should get result" do
    get calculator_result_url
    assert_response :success
  end

end
