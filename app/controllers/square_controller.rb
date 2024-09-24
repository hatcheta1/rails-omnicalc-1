class SquareController < ApplicationController
  def square_new
    render({ :template => "omnicalc_templates/square_new"} )
  end

  def square_results
    @user_num = params.fetch("users_number").to_f
    @square_results = @user_num ** 2

    render({ :template => "omnicalc_templates/square_results"} )
  end
end
