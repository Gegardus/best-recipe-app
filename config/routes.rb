
Rails.application.routes.draw do
  devise_for :users
  resources :foods, only: [:index, :new, :create, :destroy]

  resources :recipes, only: [:index, :show, :new, :create, :destroy, :update] do
    resources :recipe_foods, only: [:new, :create, :destroy, :edit, :update]
  end
  
  resources :public_recipes, only: [:index]

  resources :shopping_list, only: [:index]
 
  root "home_page#index"
end