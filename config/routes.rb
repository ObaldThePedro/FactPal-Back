Rails.application.routes.draw do
  namespace :api do
    resources :users
    resources :facts 
    resources :comments
    resources :likes
    post '/login', to: 'auth#create'
    get '/validate', to: 'auth#validate'
  end
end
