Rails.application.routes.draw do

  # => auto generated routes, not really usefull for the purpose of the challenge
  #  resources :offers
  #  resources :companies

  get 'companies' => 'companies#index'
  get 'companies/:id' => 'companies#show'
  get 'offers' => 'offers#index'
  get 'offers/:id' => 'offers#show'
  get 'search' => 'search#search'
  root 'search#search'
end
