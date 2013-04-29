Pets::Application.routes.draw do

  devise_for :users

  resources :appointments, only: [:new, :create, :show]
  resources :pets, only: [:new, :create]

  # get "doctors/index"

  resources :doctors
  root :to => "doctors#index"

end