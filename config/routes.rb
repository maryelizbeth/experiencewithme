Experiencewithme::Application.routes.draw do
  get "friends/index"

  get "user_adventures/create"

  get "user_adventures/new"

  get "user_adventures/index"

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  
  devise_scope :user do
    get '/users/auth/:provider' => 'users/omniauth_callbacks#passthru'
  end

  resources :adventures
  resources :user_adventures
  resources :friends

  root :to => 'home#index'
end