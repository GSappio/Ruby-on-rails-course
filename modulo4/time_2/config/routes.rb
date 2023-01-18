Rails.application.routes.draw do
  devise_for :profiles
  devise_for :admins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'welcome/index'
  get 'inicio', to: 'welcome#index'

  root to: 'welcome#index'
  
end

