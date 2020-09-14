Rails.application.routes.draw do
    root 'top#index'
    resources :users
    resources :profiles
    resources :relationships, only: [:create, :destroy]
    resources :training_logs
    resources :training_movies, only: [:index, :show]

    # ログイン / ログアウト
    post    'login',   to: 'sessions#create'
    delete  'logout',  to: 'sessions#destroy'

    resources :matching
    get 'select_schedule', to: 'matching#select_schedule'
    get 'reserv_thanks', to: 'matching#thanks'
    resources :reserv_logs

    namespace :trainer do
        root 'schedules#index'
        resources :schedules
        resources :profiles
        resources :courses
        resources :manages
        post 'manages/get_training_log'
    end

    namespace :admin do
        root 'master_events#index'
        resources :master_events
    end
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
