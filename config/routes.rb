Rails.application.routes.draw do
  resources :gossips
  resources :users
  resources :cities
  root 'gossips#index'
  get '/team', to: 'thegossipproject#team'
  get '/contact', to: 'thegossipproject#contact'
  #get '/welcome(/: first_name)', to: 'thegossipproject#home'
  #get 'gossips/:id', to: 'thegossipproject#gossip_page'
  #get 'author/:id', to: 'thegossipproject#author_page'

end
