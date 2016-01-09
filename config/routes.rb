Rails.application.routes.draw do
  resources :posts
  resources :insurances
  get 'welcome/index'
  root 'welcome#index'
end
