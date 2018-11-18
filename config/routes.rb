Rails.application.routes.draw do
  root 'articles#index'
  resources :articles, only: [:index, :new, :create, :edit, :update, :destroy, :show]
end
