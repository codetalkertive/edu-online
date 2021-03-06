Rails.application.routes.draw do
  
  devise_scope :user do  
   get '/users/sign_out' => 'devise/sessions#destroy'     
end

  devise_for :users
  resources :courses
  get 'home/index'
  root 'home#index'
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
