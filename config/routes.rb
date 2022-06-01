Rails.application.routes.draw do
  devise_for :users
  root 'users#index'

resources :shopping_list, only: [:index]
resources :foods, only: [:index,:show, :new, :create, :destroy]
  resources :recipe_public,only:[:index,:show]
  resources :users ,only: [:index,:show] do 
    resources :recipes, only: [:index,:show,:destroy]
  end

end
