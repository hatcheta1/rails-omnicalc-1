Rails.application.routes.draw do
  get("/", { :controller => "square", :action => "square_new" })

  get("/square/new", { :controller => "square", :action => "square_new" })

  get("/square/results", { :controller => "square", :action => "square_results" })

  get("/square_root/new", { :controller => "square", :action => "square_root_new" })

  get("/square_root/results", { :controller => "square", :action => "square_root_results" })
  
end
