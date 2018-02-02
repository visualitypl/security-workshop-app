Rails.application.routes.draw do
  devise_for :users

  resource :user, only: [:edit] do
    patch 'update_password', on: :collection
  end

  resources :books
  root to: "books#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
