Rails.application.routes.draw do
  get 'search/index'
  devise_for :users
  get 'pages/about'
  get 'search' => 'search#index'


  root to: 'posts#index'
  resources :posts do
    resources :reviews, only: :create
    resources :likes
  end
  resources :users, only: [:index, :show, :edit, :update] do
    member do
      post :follow
      post :unfollow
    end
  end
  resources :conversations do
    resources :messages
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
