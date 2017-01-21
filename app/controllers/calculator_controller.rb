class CalculatorController < ApplicationController
  
  # This is the first page we will be using
  # so we create a new record call calculation
  # and pass it to app/views/welcome.html.rb to render in a form 
  def welcome
    @calculation = Calculation.new
  end

  # This is the logic portion
  # we take calculation_param which is passed by the form in the welcome page
  # We convert them to integer using to_i then do addtion
  # To ensure we able to pass the result to the next page we use flash[:result]
  # you can use flash[:abc] or flash[:watever]
  # then we redirect to result page
  def calculate
    flash[:result] = calculation_param[:num1].to_i + calculation_param[:num2].to_i 
    redirect_to calculator_result_path
  end

  # This is the result page
  # It checks whether the flash is being set or not
  # if it is not set, then create error msg and store in @error
  # see app/views/result.html.erb to see how it render
  def result
    @error = "Error: the result is not being set!" if flash[:result].nil?
  end

  private

  # this is the place where user send their input using form to the server
  # we only allow certain fields like num1 and num2 under Calculation model to pass through
  def calculation_param
    params.require(:calculation).permit(:num1, :num2)
  end
end
