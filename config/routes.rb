Rails.application.routes.draw do
  devise_for :users
  resources :posts
  resources :insurances
  resources :contacts, only: [:new, :create]
  resources :about, only: [:index]
  get 'welcome/index'
  root 'welcome#index'

  get '*path' => redirect('/')
end
