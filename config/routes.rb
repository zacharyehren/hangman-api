Rails.application.routes.draw do
  resources :new_game, only: [:index]
  resources :users
  match 'users/authenticate' => 'users#authenticate', via: :post
end
