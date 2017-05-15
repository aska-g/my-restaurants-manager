Rails.application.routes.draw do

  root to: 'pages#home'
  # same as previous
  # get '/', to: 'pages#home'

  # is going to answer pages/contact with contact action on the pages controller
  # get 'pages/contact'
  # same as previous
  # get 'pages/contact', to: 'pages#contact'
  #
  get 'contact', to: 'pages#contact'

  get 'about', to: 'pages#about'

  get 'restaurants', to: 'restaurants#index'

  post 'restaurants', to: 'restaurants#create'

  # answering restaurants/1, restaurants/2, restaurants/N
  get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
