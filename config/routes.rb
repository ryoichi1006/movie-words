Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "posts#index"
  resources :posts, only: [:index, :new, :create, :show] do
    collection do
      get :search
    end
  end
  get "posts/new" == "items#new"
  get "posts/:id" == "items#show"
  resources :mypages, only: [:index, :show]
end
