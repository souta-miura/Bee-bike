Rails.application.routes.draw do
  namespace :user do
    get 'items/new'
    get 'items/index'
    get 'items/show'
    get 'items/edit'
  end
  devise_for :user,skip: [:passwords], controllers: {
  registrations: "user/registrations",
  sessions: 'user/sessions'
  }
  
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
