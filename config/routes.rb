Rails.application.routes.draw do
  
  root 'user/homes#top'
  get 'admin'=>'admin/homes#top'
  
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
    
    resources :users, only: [:index, :show, :edit, :update] do
      resource :relationships, only: [:create, :destroy]
      get 'followings' => 'relationships#followings', as: 'followings'
      get 'followers' => 'relationships#followers', as: 'followers'
    end
    get 'users/:id/quit'=>'users#quit', as: 'users/quit'
    patch 'users/remove'
    
    resources :addresses, only: [:index, :create, :edit, :update, :destroy]
    
    resources :makers, only: [:show]
    resources :genres, only: [:show]
    resources :cc_classes, only: [:show]
    
    resources :orders, only: [:new, :create, :index, :show]
    get 'orders/:id/comp'=>'orders#comp'
    post 'orders/info'=>'orders#info'
    
    resources :items, only: [:new, :create, :index, :show, :edit, :update, :destroy] do
      resources :item_comments, only: [:create, :destroy]
    end
    
    get 'search'=>'searches#search_result'
  end
  
  #管理者用
  namespace :admin do
    resources :users, only: [:index, :show, :edit, :update]
    
    resources :genres, only: [:index, :create, :edit, :update, :destroy]
    resources :makers, only: [:index, :create, :edit, :update, :destroy]
    resources :cc_classes, only: [:index, :create, :edit, :update, :destroy]
    
    resources :items, only: [:index, :show, :edit, :update, :destroy]
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
