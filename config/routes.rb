Rails.application.routes.draw do
  devise_for :users
  root 'users#index'

  resources :foods, only: [:index, :new, :create, :destroy]

  resources :recipes, only: [:index, :show, :new, :create, :destroy, :update] do
    resources :recipe_foods, only: [:new, :create, :destroy, :edit, :update]
  end
  
  resources :public_recipes, only: [:index]

  resources :shopping_list, only: [:index]
end
