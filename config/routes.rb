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
# Rails.application.routes.draw do
#   devise_for :users
#   # route for home page
#   root 'users#index'
#   resources :foods, only: [:index, :new, :create, :destroy]
#   resources :recipes, only: [:index, :show, :new, :create, :destroy, :update] do
#     resources :recipe_foods, only: [:new, :create, :destroy, :edit, :update]
#   end
#   resources :public_recipes, only: [:index]
#   resources :shopping_list, only: [:index]
# end
