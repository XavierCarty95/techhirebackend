Rails.application.routes.draw do
  resources :applications
  resources :jobs
  resources :companies
  get '/users', to: 'users#index'
  post '/users', to: 'users#create'
  get '/users/stay_logged_in', to: 'users#stay_logged_in'
  post '/users/login', to: 'users#login'
  patch '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#destroy'



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
