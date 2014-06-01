Freespaceatx::Application.routes.draw do
  devise_for :users

  root to: 'pages#index'

  get  '/account' => 'users#show'
  get  '/account/edit' => 'users#edit'
  post '/account/edit' => 'users#update'

  get '/spaces/thankyou' => 'spaces#thankyou'
  get '/activities/thankyou' => 'activities#thankyou'

  resources :activities

  resources :spaces

  namespace :admin do
    resources :users
    resources :activities
    resources :spaces
    resources :events
  end
end
