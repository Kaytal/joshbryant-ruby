Rails.application.routes.draw do

  #Home Screen
  root  'static_pages#home'

  #Static Pages
  get   'contact'     => 'static_pages#contact'
  get   'blog'        => 'static_pages#contact'
  get   'portfolio'   => 'static_pages#contact'

  get   'signup'  => 'users#new'
  get   'login'   => 'sessions#new'
  post  'login'   => 'sessions#create'
  get   'logout'  => 'sessions#destroy'

  resources :posts

  #Users Resource
  resources :users

end
