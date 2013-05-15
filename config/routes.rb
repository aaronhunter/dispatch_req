DispatchReq::Application.routes.draw do

  devise_for :users, controllers: { sessions: 'users/sessions' }
  resources :users, only: {:show}

  root to: 'static_pages#home'

  get "static_pages/home"

  get "static_pages/help"

  get "static_pages/about"

  get "users/show"
end
