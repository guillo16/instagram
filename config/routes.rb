Rails.application.routes.draw do
  devise_for :users
  get 'pages/about'
  root to: 'posts#index'
  resources :posts do
    resources :reviews, only: :create
  end
  resources :users, only: [:index, :show, :edit, :update] do
    member do
      post :follow
      post :unfollow
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
