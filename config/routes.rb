Rails.application.routes.draw do
  devise_for :users
  root 'users#show'

resources :shopping_list, only: [:index]
  resources :users ,only: [:show] do 
    resources :recipe_food,only:[:index,:show]
    resources :recipes, only: [:index,:show,:destroy,:new ,:create]
    resources :foods, only: [:index,:show, :new, :create, :destroy]
  end
end

