Rails.application.routes.draw do
  namespace :site do
    get 'welcome/index'
    get 'search', to: 'search#questions'
    get 'subject/:subject_id/:subject', to: 'search#subject', as: 'search_subject'
    post 'answer', to: 'answer#question'
  end
  namespace :users_backoffice do
    get 'welcome/index'
    get 'profile', to: 'profile#edit'
  end
  namespace :admins_backoffice do
    get 'welcome/index' # Dashboard
    resources :admins, except: [:delete] # Administradores
    resources :subjects # Assuntos/Áreas
    resources :questions # Perguntas
    resources :graphics # Gráficos
  end
  
  devise_for :admins, skip: [:registrations]
  devise_for :users

  get 'inicio', to: 'site/welcome/#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'site/welcome#index'
end
