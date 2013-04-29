Pets::Application.routes.draw do

  devise_for :users

  resources :appointments, only: [:new, :create, :show]
  resources :pets, only: [:new, :create]

  root :to => "doctors#index"

end
