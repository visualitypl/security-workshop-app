Rails.application.routes.draw do
  devise_for :users

  root to: "books#list"

  resource :user, only: [:edit] do
    patch 'update_password', on: :collection
  end

  resources :books do
    get :list, on: :collection
    post :add_to_my_books, on: :member
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
