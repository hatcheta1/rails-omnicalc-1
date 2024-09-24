class SquareController < ApplicationController
  def square_new
    render({ :template => "omnicalc_templates/square_new"} )
  end

  def square_results
    @user_num = params.fetch("users_number").to_f
    @square = @user_num ** 2

    render({ :template => "omnicalc_templates/square_results"} )
  end

  def square_root_new
    render({ :template => "omnicalc_templates/square_root_new" })
  end

  def square_root_results
    @user_num = params.fetch("users_number").to_f
    @square_root = Math.sqrt(@user_num)

    render({ :template => "omnicalc_templates/square_root_results" })
  end
end
