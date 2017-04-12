class FizzerController < ApplicationController
  include FizzerBuzzer

  def bubbles
    number = params[:id].to_i if params[:id].to_i != 0
    @num_obj = {}
    if number.is_a? Integer
      @num_obj[:number] = number
      @num_obj[:fb_value] = generate_fizzer(number)
      render json: @num_obj, status: 200
    else
      render json: @num_obj, status: 422
    end
  end
end
