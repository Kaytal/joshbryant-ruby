Rails.application.routes.draw do

  #Home Screen
  root  'static_pages#home'

  #Static Pages
  get   'contact'     => 'static_pages#contact'
  get   'blog'        => 'posts#index'
  get   'portfolio'   => 'projects#index'


  resources :posts

  resources :projects

  #Users Resource
  resources :users

end
