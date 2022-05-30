Rails.application.routes.draw do
  root 'users#index'
  get 'users', to: 'users#index'
  get 'users/:user_id', to: 'users#show'
  get 'users/:user_id/foods', to: 'foods#index'
  get 'users/:user_id/foods/:id', to: 'foods#show'
  get 'users/:user_id/recipes', to: 'recipes#index'
  get 'users/:user_id/recipes/:id', to: 'recipes#show'
  get 'recipe_foods', to: 'recipe_foods#index'
  get 'recipe_foods/:id', to: 'recipe_foods#show'
end
