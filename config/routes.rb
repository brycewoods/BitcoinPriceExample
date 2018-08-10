Rails.application.routes.draw do
  get 'dashboard/dash'
  get 'forex_example/index'
  resources :users
  root 'forex_example#index'
  
  #Login route
  post '/login' => 'forex_example#login'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
