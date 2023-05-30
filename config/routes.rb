Rails.application.routes.draw do
  devise_for :users

  root 'splash#index'

  get 'home/index', as: 'home_index'
end
