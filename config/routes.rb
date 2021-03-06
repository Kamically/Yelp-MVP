Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [:new, :create, :show] # -> restaurants/restaurant_id/reviews/new
  end

  resources :reviews, only: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
