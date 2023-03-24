require 'api_constraints'

Rails.application.routes.draw do

  # Monolito
  devise_for :users
  root 'home#index'
  get 'home/index'
  resources :breeds
  resources :genders
  resources :people

  # API
  namespace :api, defaults: { format: :json } do
    
    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do

      $version = "v1"

      resources :breeds
      resources :genders
      resources :people

    end
  end

end
