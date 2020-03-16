Rails.application.routes.draw do
  devise_for :users
  get 'posts', to: 'posts#index'
  get 'tweets', to: 'tweets#index'
  root 'groups#index'
  resource :user, only: [:index, :edit, :update]
  resources :posts, only: [:new, :create, :show, :edit]
  resources :tweets, only: [:new, :create, :show, :edit]
  resources :groups, only: [:index, :new, :create, :edit, :update] do
    resources :messages, only: [:index, :create]
  end
 end 