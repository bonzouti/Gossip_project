Rails.application.routes.draw do
  root 'thegossipproject#welcome'
  get '/team', to: 'thegossipproject#team'
  get '/contact', to: 'thegossipproject#contact'
  get '/welcome(/: first_name)', to: 'thegossipproject#home'
  get 'gossips/:id', to: 'thegossipproject#gossip_page'
  get 'author/:id', to: 'thegossipproject#author_page'
resources :gossips
end
