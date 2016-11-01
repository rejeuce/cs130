Rails.application.routes.draw do
  root 'login#login'

  get 'login' => 'login#login'

  get 'home' => 'home#home'

  get 'map' => 'map#map'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
