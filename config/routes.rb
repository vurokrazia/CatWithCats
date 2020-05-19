Rails.application.routes.draw do
  resources :markers
  resources :profiles
  resources :groups
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # devise_scope :user do
  #   get 'sign_in', to: 'users/sessions#new'
  #   get 'sign_up', to: 'users/registrations#new'
  #   get 'forgot_password', to: 'users/passwords#new'
  #   get 'reset_password', to: 'users/passwords#edit'
  # end
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
