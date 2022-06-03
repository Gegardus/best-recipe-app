Rails.application.routes.draw do
  get 'recipe_/public'
  devise_for :users
  root 'users#show'

resources :shopping_list, only: [:index]
  resources :users ,only: [:show] do 
    resources :recipe_public,only:[:index,:show]
    resources :recipes, only: [:index,:show,:destroy,:new ,:create] do
      resources :recipe_food,only:[:destroy,:new ,:create]
    end 
    resources :foods, only: [:index,:show, :new, :create, :destroy]
  end
end

