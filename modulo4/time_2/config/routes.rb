Rails.application.routes.draw do
  namespace :site do
    get 'welcome/index'
  end
  namespace :users_backoffice do
    get 'welcome/index'
  end
  namespace :admins_backoffice do
    get 'welcome/index'
  end

  devise_for :admins
  devise_for :users
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  get 'inicio', to: 'site/welcome#index'

  root to: 'site/welcome#index'
  
end

