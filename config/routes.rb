Rails.application.routes.draw do
  root 'user/homes#top'
  
  devise_for :user,skip: [:passwords], controllers: {
  registrations: "user/registrations",
  sessions: 'user/sessions'
  }
  
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
  }
  
  #ユーザー用
  namespace :user, :path => '' do
    get '/about'=>'homes#about'
    
    resources :users, only: [:index, :show, :edit, :update]
    get 'users/:id/quit'
    patch 'users/remove'
    
    resources :addresses, only: [:index, :create, :edit, :update, :destroy]
    
    resources :orders, only: [:new, :create, :index, :show]
    get 'orders/:id/comp'=>'orders#comp'
    post 'orders/info'=>'orders#info'
    
    resources :items, only: [:new, :create, :index, :show, :edit, :update]
  end
  
  #管理者用
  namespace :admin do
    resources :users, only: [:index, :show, :edit, :update]
    
    resources :genres, only: [:index, :create, :edit, :update]
    
    resources :items, only: [:index, :show, :edit, :update]
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
