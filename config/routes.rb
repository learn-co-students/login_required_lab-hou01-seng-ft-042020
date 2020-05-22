Rails.application.routes.draw do

  root 'sessions#new'

  get '/login' => 'sessions#new'

  get '/' => 'sessions#index'

  post '/login' => 'sessions#create'

  get '/secret', to: 'secrets#show'

  post '/logout' => 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
