Rails.application.routes.draw do
  devise_for :users
  resources :expenses, only: [:index]
end
