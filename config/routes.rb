Rails.application.routes.draw do
  resources :new_game, only: [:index]
end
