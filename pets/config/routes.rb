Pets::Application.routes.draw do

  resources :appointments, only: [:new, :create, :show]
  resources :pets, only: [:new, :create]

  root :to => "home#index"

  get 'doctors/index'

  get 'appointments/new'

  get 'pets/new'

  get 'home/index'

  # get 'appointments/:customer_id'

end
