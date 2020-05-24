Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

get 'secrets/new' #why is this even there?

root 'application#hello'  
get '/login' => 'sessions#new'
post '/login' => 'sessions#create'
post '/logout' => 'sessions#destroy'

get '/secret' => 'secrets#show' #why is there no "s" in secret?

end
