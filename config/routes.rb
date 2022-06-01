Rails.application.routes.draw do
  devise_for :users
  root 'users#index'

  resources :foods, only: [:index, :new, :create, :destroy]

  resources :recipes, only: [:index, :show, :new, :create, :destroy, :update] do
    resources :recipe_foods, only: [:new, :create, :destroy, :edit, :update]
  end
  
  resources :public_recipes, only: [:index]

  resources :shopping_list, only: [:index]

  devise_scope :user do match "sign_out" => "sessions#destroy", via: [:delete] end 



  # get 'users', to: 'users#index'
  # get 'users/:user_id', to: 'users#show'
  # get 'users/:user_id/foods', to: 'foods#index'
  # get 'users/:user_id/foods/:id', to: 'foods#show'
  # get 'users/:user_id/recipes', to: 'recipes#index'
  # get 'users/:user_id/recipes/:id', to: 'recipes#show'
  # get 'recipe_foods', to: 'recipe_foods#index'
  # get 'recipe_foods/:id', to: 'recipe_foods#show'
end
