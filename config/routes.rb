Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "articles#index"

  # Creates ALL CRUD ROUTES
  resources :articles
end
