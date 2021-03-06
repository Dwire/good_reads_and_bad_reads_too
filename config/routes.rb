Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books, only: [:index, :show]
  resources :users, only: [:index, :show]
  resources :user_books, only: [:index, :show]
  resources :user_revies, only: [:index, :show]

end
