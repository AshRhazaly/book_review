Rails.application.routes.draw do
  resources :books do
      resources :reviews
      collection do
        get 'search'
        post 'search'
      end
  end
  root 'books#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
