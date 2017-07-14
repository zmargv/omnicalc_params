Rails.application.routes.draw do
  # no forms
  get("/flexible/square/:a_number" ,{:controller => "calculations" ,:action => "flex_square"})
  get("/flexible/square_root/:a_number" ,{:controller => "calculations" ,:action => "flex_square_root"})
  get("/flexible/payment/:rate/:years/:amount" ,{:controller => "calculations" ,:action => "payment"})
  get("/flexible/random/:a/:b" ,{:controller => "calculations" ,:action => "flex_random"})
  
  # forms
  get("/square/new" ,{:controller => "calculations" ,:action => "square_form"})
  get("/square/results" ,{:controller => "calculations" ,:action => "square_form_results"})
  
  get("/square_root/new" ,{:controller => "calculations" ,:action => "sqrt_form"})
  get("/square_root/results" ,{:controller => "calculations" ,:action => "sqrt_form_results"})
  
  get("/payment/new" ,{:controller => "calculations" ,:action => "pay_form"})
  get("/payment/results" ,{:controller => "calculations" ,:action => "pay_form_results"})
  
  get("/random/new" ,{:controller => "calculations" ,:action => "rnd_form"})
  get("/random/results" ,{:controller => "calculations" ,:action => "rnd_form_results"})
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount WebGit::Engine, at: "/rails/git"
end
