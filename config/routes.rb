Rails.application.routes.draw do

  devise_for :users, path: '/', path_names: { sign_in: 'admin', sign_out: 'logout' }, controllers: { sessions: 'users/sessions' }

  root to: 'posts#index'

  resources :posts, only: [:index, :show]

  get '/about_me', to: 'me_page#index', as: :about_me

  namespace :admin do
    resources :posts
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
