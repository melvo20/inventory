Rails.application.routes.draw do
  resources :products
  resources :volunteers
  devise_for :users
  root 'main#home'
  get '/home', to: 'main#home'
  get '/about', to: 'main#about'
  get '/contact', to: 'main#contact'
  get '/calender', to: 'main#calender'
 

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
