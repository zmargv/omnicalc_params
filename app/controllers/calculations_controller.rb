class CalculationsController < ApplicationController
    def flex_square
        @result = params["a_number"].to_i**2
        render("calculations/flexible_square_template.html.erb")
    end
    def flex_square_root
        @result = params["a_number"].to_i**(0.5)
        render("calculations/flexible_square_root_template.html.erb")
    end
    def payment
        @rate = params["rate"].to_f/100
        @years = params["years"].to_i
        @amount = params["amount"].to_f
        @result = if @rate==0 
          @amount/@years/12
        else 
          @rate/1200*@amount / (1-(1+@rate/1200)**(-@years*12))
        end
        render("calculations/flexible_payment_template.html.erb")
    end
    def flex_random
        @low = params["a"].to_i
        @high = params["b"].to_i
        @result = rand(@low..@high)
        render("calculations/flexible_random_template.html.erb")
    end
    
    def square_form
        render("calculations/square_form_template.html.erb")
    end
    def square_form_results
        @result = params["user_number"].to_f**2
        render("calculations/square_form_results_template.html.erb")
    end
    
    def sqrt_form
        render("calculations/sqrt_form_template.html.erb")
    end
    def sqrt_form_results
        @result = params["user_number"].to_f**(0.5)
        render("calculations/sqrt_form_results_template.html.erb")
    end
    
    def pay_form
        render("calculations/pay_form_template.html.erb")
    end
    def pay_form_results
        @rate = params["rate"].to_f
        @years = params["years"].to_i
        @amount = params["amount"].to_f
        @result = if @rate==0 
          @amount/@years/12
        else 
          @rate/1200*@amount / (1-(1+@rate/1200)**(-@years*12))
        end
        render("calculations/pay_form_results_template.html.erb")
    end
    
    def rnd_form
        render("calculations/rnd_form_template.html.erb")
    end
    def rnd_form_results
        @low = params["a"].to_f
        @high = params["b"].to_f
        @result = rand()*(@high-@low) + @low
        render("calculations/rnd_form_results_template.html.erb")
    end
end