Rails.application.routes.draw do
  devise_for :users
  resources :posts
  resources :insurances
  resources :contacts, only: [:new, :create]
  resources :about, only: [:index]
  resources :customer_service

  resources :quotes, only: [:index, :create]
  namespace :insurance_leads do
    resources :current_auto_insurance_policies, only: [:show]
    resources :current_home_insurance_policies, only: [:show]
  end
  get 'welcome/index'
  root 'welcome#index'

  get '*path' => redirect('/')
end
