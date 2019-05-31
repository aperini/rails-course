# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do

  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'

  root 'home#index'

  # verb '/url' => 'controller#action'
  get '/about' => 'home#about'

  resources :questions
  resources :answers
end
