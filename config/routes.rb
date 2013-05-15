DispatchReq::Application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }

  root to: 'static_pages#home'

  get "static_pages/home"

  get "static_pages/help"

  get "static_pages/about"

end
