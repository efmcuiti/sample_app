Rails.application.routes.draw do
  
  get '/signup', to: 'users#new'

  post '/signup', to: 'users#create'

  # As defined: it will create a <name>_url and <name>_path
  get '/help', to: 'static_pages#help'

  get '/about', to: 'static_pages#about'

  get '/contact', to: 'static_pages#contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'

  resources :users
end
