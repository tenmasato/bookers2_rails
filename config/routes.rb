Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get 'home/about' => 'homes#index'

  resources :books,only:[:new,:create,:index,:show,:destroy,:edit,:update]do
    resource :favorites,only:[:create,:destroy]
    resources :book_comments,only:[:create,:destroy]
  end
  resources :users,only:[:show,:new,:index,:edit,:create,:update]
end
