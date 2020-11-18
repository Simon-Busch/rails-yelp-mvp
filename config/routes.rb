Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get '/restaurants', to: "restaurant#index"

  # get '/restaurants/new', to: "restaurant#new", as: :new_restaurant
  # post '/restaurants', to: "restaurant#create"

  # get '/restaurant/:id', to: "restaurant#show", as: :restaurant

  # get '/restaurant/:id/review/new', to: "review#new", as: :new_review
  # post '/restaurant/:id/review', to: "review#create"

  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
end
