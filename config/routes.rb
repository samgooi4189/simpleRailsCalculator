Rails.application.routes.draw do
  root 'calculator#welcome'

  get 'calculator/welcome'
  post 'calculator/calculate'
  get 'calculator/result'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
