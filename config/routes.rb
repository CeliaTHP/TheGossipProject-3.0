Rails.application.routes.draw do

  resources :gossips

  resources :author

  resources :welcome

  resources :cities

  resources :sessions

  root 'gossips#index'

  get 'staticpage/contact', to: 'static_pages#contact'

  get 'staticpage/team', to: 'static_pages#team'


end
