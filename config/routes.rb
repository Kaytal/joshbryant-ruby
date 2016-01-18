Rails.application.routes.draw do

  #Home Screen
  root 'static_pages#home'

  #Static Pages
  get 'contact' => 'static_pages#contact'
  get 'blog' => 'static_pages#contact'
  get 'portfolio' => 'static_pages#contact'

  get 'signup' => 'users#new'

  #Users Resource
  resources :users

end
