Pets::Application.routes.draw do

  devise_for :users

  resources :appointments, only: [:new, :create, :show]
  resources :pets, only: [:new, :create]

  devise_for :person

  # get "doctors/index"

  resources :doctors
  root :to => "doctors#index"

end
