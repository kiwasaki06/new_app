Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/about'

  get 'comments/create'
  get 'comments/destroy'

  resources :posts do
    resources :comments, only: [:create, :destroy]
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
