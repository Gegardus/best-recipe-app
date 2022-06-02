# Rails.application.routes.draw do
#   devise_for :users
#   root 'users#index'

# resources :shopping_list, only: [:index]
# resources :foods, only: [:index,:show, :new, :create, :destroy]
#   resources :recipe_public, only:[:index,:show]
#   resources :users ,only: [:index,:show] do 
#     resources :recipes, only: [:index,:show,:destroy]
#   end
# end

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

  resources :recipes, only: [:index, :show, :new, :create, :destroy, :update] do
    resources :recipe_foods, only: [:new, :create, :destroy, :edit, :update]
  end
  
  resources :public_recipes, only: [:index]

end
