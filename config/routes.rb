Rails.application.routes.draw do
  root 'cooking_records#index'
  get 'cooking_records', to: 'cooking_records#index'
end
