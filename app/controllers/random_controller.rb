class RandomController < ApplicationController
  def random_new
    render({ :template => "omnicalc_templates/random_new" })
  end

  def random_results
    @min = params.fetch("minimum").to_f
    @max = params.fetch("maximum").to_f

    @random = rand(@min..@max)
    
    render({ :template => "omnicalc_templates/random_results" })
  end
end
