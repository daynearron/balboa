Rails.application.routes.draw do
  resources :posts
  resources :insurances
  root 'welcome#index'
end
