Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :books,only:[:new,:create,:index,:show,:destroy,:edit,:update]
  resources :users,only:[:show,:new,:index,:edit,:create,:update]
  get 'home/about' => 'homes#index'

end
