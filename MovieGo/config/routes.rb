Rails.application.routes.draw do

  root 'home#landing'

  get 'login' => 'login#login'

  get 'home' => 'home#home'

  get 'home/landing' => 'home#landing'

  get 'map' => 'map#map'

  post 'map' => 'map#create'

  get 'movies' => 'movies#list'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
