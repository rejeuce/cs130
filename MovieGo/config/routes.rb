Rails.application.routes.draw do

  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]

  get 'sessions/create'

  get 'sessions/destroy'

  root 'home#landing'

  get 'login' => 'login#login'

  get 'home' => 'home#home'

  get 'home/landing' => 'home#landing'

  get 'map' => 'map#map'

  post 'map' => 'map#create'

  get 'movies' => 'movies#list'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
