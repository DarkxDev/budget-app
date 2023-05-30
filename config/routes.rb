Rails.application.routes.draw do
  devise_for :users

  root 'splash#index'

  get 'home/index', as: 'home_index'
  get 'home/new', as: 'home_new'
  post 'home/create', as: 'home_create'
end
