Rails.application.routes.draw do
  get 'password_resets/new'

  get 'password_resets/edit'

  get 'sessions/new'

  get 'users/new'

  root 'pages#home'

  get  'about' => 'pages#about'

  get 'admin' => 'pages#admin'

  get 'contact' => 'pages#contact'

  get 'signup' => 'users#new'

  get 'login' => 'sessions#new'

  get 'edit'  => 'users#edit'

  post 'login' => 'sessions#create'

  delete 'logout' => 'sessions#destroy'


  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
  resources :microposts, only: [:create, :destroy]

end
