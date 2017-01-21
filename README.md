# README

h1. Description
* This is a very basic calculator (only have addition at the moment)

h1. How to achieve it? ($ means do it in terminal)
* $ rails new calculatorApp
* $ cd calculatorApp
* Add app/models/calculation.rb
* $ rails g controller Calculator welcome calculate result
* Add functionality in app/controllers/calculator_controller.rb
* Add some code in app/views/
** welcome.html.erb
** result.html.erb
* Do some modification at config/routes.rb to suport POST request
