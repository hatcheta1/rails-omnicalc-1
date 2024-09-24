class PaymentController < ApplicationController
  def payment_new
    render({ :template => "omnicalc_templates/payment_new" })
  end

  def payment_results
    @apr = params.fetch("apr").to_f
    @years = params.fetch("years").to_f
    @principal = params.fetch("principal").to_f

    rate_per_period = (@apr / 100) / 12
    num_of_periods = @years * 12

    numerator = rate_per_period * @principal
    denominator = 1 - (1 + rate_per_period) ** -num_of_periods

    @payment = numerator / denominator

    render({ :template => "omnicalc_templates/payment_results" })
  end
end
