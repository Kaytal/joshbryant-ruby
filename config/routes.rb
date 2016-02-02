Rails.application.routes.draw do

  devise_for :admins
  #Home Screen
  root  'static_pages#home'

  #Static Pages
  get   'contact'     => 'contacts#new'
  get   'blog'        => 'posts#index'
  get   'portfolio'   => 'projects#index'


  resources :posts
  resources :contacts
  resources :projects

  #Users Resource
  resources :users


  get '*path' => redirect('/')

end
