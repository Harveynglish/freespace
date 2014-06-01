Freespaceatx::Application.routes.draw do
  devise_for :users

  root to: 'pages#index'

  get  '/account' => 'users#show'
  get  '/account/edit' => 'devise/registrations#edit'

  resources :activities

  resources :spaces

  namespace :admin do
    resources :users
    resources :activities
    resources :spaces
    resources :events
  end
end
