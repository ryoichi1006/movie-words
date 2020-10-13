Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "posts#index"
  resources :posts do
    collection do
      get :search
    end
  end
  devise_scope :user do
    get 'sign_out', to: "sessions#destroy"
  end
  get "posts/new" == "items#new"
  get "posts/:id" == "items#show"
  post "likes/:post_id/create" => "likes#create"
  post "likes/:post_id/destroy" => "likes#destroy"
  resources :mypages, only: [:index, :show]
end
