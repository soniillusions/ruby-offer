# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check

  post '/receive_tags', to: 'resume_controller#receive_tags'

  # Defines the root path route ("/")
  # root "posts#index"
  root to: 'jobs#index'

  resources :users do
    resource :resume
    resource :job
  end

  resources :tags, only: [:show]
  resources :resumes, only: %i[index show] # Дополнительный маршрут для списка всех резюме
  resources :jobs, only: %i[index show]
end
