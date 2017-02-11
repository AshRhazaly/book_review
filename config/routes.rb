Rails.application.routes.draw do
  resources :reviews
  resources :authors
  resources :books
  root 'books#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
