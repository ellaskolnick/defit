Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :products do
    # /products/...
    resources
    resources :reviews, only: [:new, :create]
  end

    # get :



  member do
    get :user
  end
end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
