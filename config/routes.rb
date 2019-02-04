Rails.application.routes.draw do
  root 'thegossipproject#home'
  get '/team', to: 'thegossipproject#team'
  get '/contact', to: 'thegossipproject#contact'
  get 'welcome/:first_name', to: 'thegossipproject#welcome'
  get 'gossips/:id', to: 'thegossipproject#gossip_page'
  get 'author/:id', to: 'thegossipproject#author_page'
end
