Rails.application.routes.draw do

  root 'home#index'

  # verb '/url' => 'controller#action'
  get '/about' => 'home#about'

  resources :questions
  resources :answers

  # post '/questions'     => 'home#temp'
  # get  '/questions/:id' => 'home#question'
  # post '/answers'       => 'home#answer'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
