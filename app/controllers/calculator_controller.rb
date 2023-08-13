# app/controllers/calculator_controller.rb
class CalculatorController < ApplicationController
  def index
    # This action renders the homepage view (app/views/calculator/index.html.erb)
  end

  def square_form
    # This action renders the square form view (app/views/calculator/square_form.html.erb)
  end

  def square
    @number = params[:number].to_f
    @square = @number**2
    render :square
  end


  def square_form
    # This action renders the square form view
  end

  def square
    @number = params[:number].to_f
    @square = @number**2
    render :square
  end

  def square_root_form
    # This action renders the square root form view (app/views/calculator/square_root_form.html.erb)
  end

def square_root
  @number = params[:number].to_f
  @result = Math.sqrt(@number)
  render :square_root
end


  def payment_form
    # This action renders the payment form view (app/views/calculator/payment_form.html.erb)
  end

  def payment
    @apr = params[:apr].to_f
    @years = params[:years].to_i
    @principal = params[:principal].to_f

    monthly_interest_rate = @apr / 12
    number_of_payments = @years * 12

    numerator = monthly_interest_rate * @present_value
    denominator = 1 - (1 + monthly_interest_rate)**(-number_of_payments)

    @monthly_payment = numerator / denominator
    render :payment
  end

  def random_form
    # This action renders the random form view (app/views/calculator/random_form.html.erb)
  end

  def random
    @min = params[:min].to_f
    @max = params[:max].to_f
    @random_number = rand(@min..@max).round(2)
    render :random_form
  end
  
end
